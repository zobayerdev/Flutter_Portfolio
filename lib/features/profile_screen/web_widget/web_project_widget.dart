// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';

class webFeaturedProject extends StatelessWidget {
  final String projectTitle;
  final String projectDescription;
  final String projectSkills;
  final String projectImage;
  const webFeaturedProject({
    super.key,
    required this.projectTitle,
    required this.projectDescription,
    required this.projectSkills,
    required this.projectImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () {
          // Navigate to project details screen
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const ProjectDetailsScreen(),
          //   ),
          // );
        },
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            color: AppColors.c1F1F1F,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.c1F2937,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        projectImage,
                        width: double.infinity,
                        height: 190,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              projectTitle,
                              style:
                                  TextFontStyle.textStyle14w500Poppins.copyWith(
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              projectDescription,
                              style:
                                  TextFontStyle.textStyle12w400Poppins.copyWith(
                                color: AppColors.cFFFFFF,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              projectSkills,
                              style: TextFontStyle.smallStyle11w400Poppins
                                  .copyWith(
                                color: AppColors.cFFFFFF,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
