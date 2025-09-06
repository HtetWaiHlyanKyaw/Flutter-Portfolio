import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class AppEducationImageTablet extends StatefulWidget {
  final String image;
  final String title;
  final Gradient gradient;
  final List<String>? list;
  const AppEducationImageTablet({
    super.key,
    this.list,
    required this.title,
    required this.image,
    required this.gradient,
  });

  @override
  State<AppEducationImageTablet> createState() =>
      _AppEducationImageTabletState();
}

class _AppEducationImageTabletState extends State<AppEducationImageTablet> {
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
        borderRadius: BorderRadius.circular(0),
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
                    left: 12,
                    bottom: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            height: 28 / 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        widget.list != null ? SizedBox(height: 4) : SizedBox(),
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
        fontSize: 14,
        height: 24 / 14,
        // fontWeight: FontWeight.w600,
      ),
    );
  }
}
