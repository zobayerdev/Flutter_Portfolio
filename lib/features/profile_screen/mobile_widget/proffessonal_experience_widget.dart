// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';

class proffesionalExperienceWidget extends StatelessWidget {
  final String experienceCompany;
  final String experienceTitle;
  final String experienceSkills;
  final String experienceYear;
  final String experienceImage;
  const proffesionalExperienceWidget({
    super.key,
    required this.experienceCompany,
    required this.experienceTitle,
    required this.experienceSkills,
    required this.experienceYear,
    required this.experienceImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              experienceImage,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experienceTitle,
                  style: TextFontStyle.headLine22w600Poppins.copyWith(
                    fontSize: 15,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  experienceCompany,
                  style: TextFontStyle.headLine22w400Poppins.copyWith(
                    fontSize: 12,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  experienceYear,
                  style: TextFontStyle.headLine22w400Poppins.copyWith(
                    fontSize: 12,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  experienceSkills,
                  style: TextFontStyle.headLine22w400Poppins.copyWith(
                    fontSize: 12,
                    color: AppColors.cFFFFFF,
                  ),
                  maxLines: 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
