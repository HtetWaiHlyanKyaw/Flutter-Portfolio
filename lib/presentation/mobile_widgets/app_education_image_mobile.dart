import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class AppEducationImageMobile extends StatefulWidget {
  final String image;
  final String title;
  final Gradient gradient;
  final List<String>? list;
  const AppEducationImageMobile({
    super.key,
    this.list,
    required this.title,
    required this.image,
    required this.gradient,
  });

  @override
  State<AppEducationImageMobile> createState() =>
      _AppEducationImageMobileState();
}

class _AppEducationImageMobileState extends State<AppEducationImageMobile> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          fit: StackFit.expand,
          children: [
            _isHovered
                ? Image.asset(
                    widget.image,
                    fit: BoxFit.cover, // crop & fill
                    width: double.infinity, // ensure full width
                  )
                : ShaderMask(
                    shaderCallback: (bounds) =>
                        widget.gradient.createShader(bounds),
                    blendMode: BlendMode.screen,
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.cover, // crop & fill
                      width: double.infinity, // ensure full width
                    ),
                  ),
            _isHovered
                ? SizedBox()
                : Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withAlpha(180),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.1, 1],
                      ),
                    ),
                  ),

            _isHovered
                ? SizedBox()
                : Positioned(
                    left: 8,
                    bottom: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 12,
                            height: 16 / 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        widget.list != null ? SizedBox(height: 2) : SizedBox(),
                        ...(widget.list != null
                            ? List.generate(
                                widget.list!.length,
                                (index) => _buildText(widget.list![index]),
                              )
                            : []),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.gray,
        fontSize: 10,
        height: 16 / 10,
        // fontWeight: FontWeight.w600,
      ),
    );
  }
}
