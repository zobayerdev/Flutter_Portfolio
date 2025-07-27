import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';

class WebSkillWidget extends StatelessWidget {
  final String skillName;
  final String skillIcon;
  final VoidCallback?
      onPressed; // Use VoidCallback instead of Widget for onPressed

  const WebSkillWidget({
    super.key,
    required this.skillName,
    required this.skillIcon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed, // Correctly trigger onPressed when tapped
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.c000000,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: Row(
            children: [
              SvgPicture.asset(
                skillIcon,
                height: 24,
                width: 24,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                skillName,
                style: TextFontStyle.headLine22w400Poppins.copyWith(
                  fontSize: 12,
                  color: AppColors.cFFFFFF,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
