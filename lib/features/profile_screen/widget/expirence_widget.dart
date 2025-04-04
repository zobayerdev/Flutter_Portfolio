import 'package:flutter/material.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';

class ExperienceWidget extends StatelessWidget {
  final String experience;
  final String experienceTitle;
  const ExperienceWidget({
    super.key,
    required this.experience,
    required this.experienceTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
        color: AppColors.c1F1F1F,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              experience,
              style: TextFontStyle.headLine22w600Poppins.copyWith(
                fontSize: 15,
                color: AppColors.cFFFFFF,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              experienceTitle,
              style: TextFontStyle.headLine22w400Poppins.copyWith(
                fontSize: 12,
                color: AppColors.cFFFFFF,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
