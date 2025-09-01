import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_box_shadows.dart';
import '../../core/constants/app_colors.dart';

class AppProjectCardMobile extends StatefulWidget {
  final String number;
  final String image;
  final String title;
  final String subTitle;
  final Gradient color;
  final String desc;
  final String url;
  final List<List<dynamic>> features;
  final List<String>? tags;
  final String? icon;
  const AppProjectCardMobile({
    super.key,
    required this.number,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.color,
    required this.desc,
    required this.url,
    required this.features,
    this.tags,
    this.icon,
  });

  @override
  State<AppProjectCardMobile> createState() => _AppProjectCardMobileState();
}

class _AppProjectCardMobileState extends State<AppProjectCardMobile> {
  bool _isHovered = false;
  bool _isHoveredCard = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: widget.color),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: MouseRegion(
          onEnter: (_) => setState(() {
            _isHoveredCard = true;
          }),
          onExit: (_) => setState(() {
            _isHoveredCard = false;
          }),
          child: Column(
            children: [
              widget.tags != null
                  ? Row(
                      children: List.generate(
                        widget.tags!.length,
                        (index) => _buildTag(widget.tags![index]),
                      ),
                    )
                  : SizedBox(),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColors.white,
                  boxShadow: [
                    _isHoveredCard
                        ? AppBoxShadows.purpleShadowHovered
                        : AppBoxShadows.purpleShadow,
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildImage(),
                    const SizedBox(height: 16),
                    _buildTextSection(),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [AppBoxShadows.purpleShadow],
                  ),
                  child: FilledButton.icon(
                    onPressed: _launchUrl,
                    label: Text(
                      'GitHub',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        height: 28 / 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      elevation: 0,
                    ),
                    icon: Icon(
                      EvaIcons.diagonalArrowRightUp,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeature({required IconData icon, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primary, size: 24),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                height: 28 / 16,
                fontWeight: FontWeight.w600,
              ),
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.number,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 40,
                height: 48 / 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 8),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 28,
                      height: 36 / 28,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2, // prevent overflow
                    overflow: TextOverflow.ellipsis, // show "..." if too long
                  ),
                ],
              ),
            ),
          ],
        ),

        Text(
          widget.subTitle,
          style: TextStyle(
            color: AppColors.darkGray,
            fontSize: 16,
            height: 28 / 16,
            fontWeight: FontWeight.w600,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8),

        // Desc
        Text(
          widget.desc,
          style: TextStyle(
            color: AppColors.darkGray,
            fontSize: 14,
            height: 24 / 14,
          ),
          textAlign: TextAlign.justify,
        ),

        const SizedBox(height: 8),

        Divider(color: AppColors.gray),

        // Features
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              widget.features.length,
              (index) => _buildFeature(
                icon: widget.features[index][0],
                text: widget.features[index][1],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildImage() {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: _isHovered
          ? Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.gray),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      color: Colors.black.withAlpha(128),
                      colorBlendMode: BlendMode.darken,
                      widget.image,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),

                widget.icon != null
                    ? Positioned.fill(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: AppColors.white,
                                width: 2,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                widget.icon!,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            )
          : Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.gray),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
    );
  }

  Widget _buildTag(String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.white,
          boxShadow: [AppBoxShadows.purpleShadow],
        ),
        child: Text(
          title,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 14,
            height: 24 / 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse(widget.url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
