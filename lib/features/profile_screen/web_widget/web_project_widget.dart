// ignore_for_file: camel_case_types, unnecessary_string_interpolations

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';
import 'package:my_portfolio/common_widgets/custom_button.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_project_details.dart';

class webFeaturedProject extends StatelessWidget {
  final String title,
      description,
      shortDescription,
      skills,
      imageUrl,
      liveLink,
      sourceCodeLink,
      duration,
      client,
      techStack,
      projectType,
      status,
      price,
      playStoreLink,
      appStoreLink;
  const webFeaturedProject({
    super.key,
    required this.title,
    required this.description,
    required this.skills,
    required this.imageUrl,
    required this.liveLink,
    required this.sourceCodeLink,
    required this.duration,
    required this.client,
    required this.techStack,
    required this.projectType,
    required this.status,
    required this.price,
    required this.playStoreLink,
    required this.appStoreLink,
    required this.shortDescription,
  });

  @override
  Widget build(BuildContext context) {
    log("===> Description: $description");

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () {
          // Navigate to project details screen
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
                        imageUrl,
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
                              title,
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
                              shortDescription,
                              style:
                                  TextFontStyle.textStyle12w400Poppins.copyWith(
                                color: AppColors.cFFFFFF,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          customButton(
                            name: 'View Details',
                            color: AppColors.primaryColor,
                            onCallBack: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WebProjectDetails(
                                    title: '$title',
                                    description: '$description',
                                    skills: '$skills',
                                    imageUrl: '$imageUrl',
                                    liveLink: '$liveLink',
                                    sourceCodeLink: '$sourceCodeLink',
                                    duration: '$duration',
                                    client: '$client',
                                    techStack: '$techStack',
                                    projectType: '$projectType',
                                    status: '$status',
                                    price: '$price',
                                    playStoreLink: '$playStoreLink',
                                    appStoreLink: '$appStoreLink',
                                  ),
                                ),
                              );
                            },
                            context: context,
                            height: 40,
                          )
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
