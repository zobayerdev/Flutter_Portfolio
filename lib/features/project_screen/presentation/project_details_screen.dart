import 'package:flutter/material.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';
import 'package:my_portfolio/assets_helper/app_icons.dart';
import 'package:my_portfolio/assets_helper/app_images.dart';
import 'package:my_portfolio/features/profile_screen/mobile_widget/skill_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailsScreen extends StatefulWidget {
  const ProjectDetailsScreen({super.key});

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  List<String> imagePaths = [
    AppImages.slideImageOne,
    AppImages.slideImageTwo,
    AppImages.slideImageThree,
    AppImages.slideImageFour,
    AppImages.slideImageFive,
    AppImages.slideImageOne,
    AppImages.slideImageTwo,
    AppImages.slideImageThree,
    AppImages.slideImageFour,
    AppImages.slideImageFive,
  ];

  @override
  void initState() {
    super.initState();
    imagePaths; // Load the images or data here
  }

  void _launchURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.trodev.careermatcherpro&hl=en'; // The URL you want to open
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c0A0A0A,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.cFFFFFF,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Project Details',
          style: TextFontStyle.textStyle18w600Poppins.copyWith(
            color: AppColors.cFFFFFF,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.c0A0A0A,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: CarouselView(
                    itemExtent: MediaQuery.sizeOf(context).width * 0.8,
                    itemSnapping: true,
                    elevation: 4,
                    padding: const EdgeInsets.all(8),
                    children: List.generate(
                      imagePaths
                          .length, // Using the length of the imagePaths list
                      (int index) {
                        return Container(
                          color: Colors.black, // Optional: background color
                          child: Image.asset(
                            imagePaths[index], // Load image from assets
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'E-Commerce App',
                    style: TextFontStyle.headLine22w600Poppins.copyWith(
                      fontSize: 18,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Project Description',
                    style: TextFontStyle.headLine22w600Poppins.copyWith(
                      fontSize: 18,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  style: TextFontStyle.textStyle12w400Poppins.copyWith(
                    color: AppColors.cFFFFFF,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Development Tools',
                    style: TextFontStyle.headLine22w600Poppins.copyWith(
                      fontSize: 18,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Flutter, Dart, Firebase, Android Studio, Visual Studio Code, Git, GitHub, Figma",
                  style: TextFontStyle.textStyle12w400Poppins.copyWith(
                    color: AppColors.cFFFFFF,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'View Project',
                    style: TextFontStyle.headLine22w600Poppins.copyWith(
                      fontSize: 18,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SkillWidget(
                      skillName: 'Play Store',
                      skillIcon: AppIcons.googleIcons,
                      onPressed: _launchURL,
                    ),
                    const SkillWidget(
                      skillName: 'App Store',
                      skillIcon: AppIcons.appleIcon,
                    ),
                    const SkillWidget(
                      skillName: 'Website',
                      skillIcon: AppIcons.androidIcons,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
