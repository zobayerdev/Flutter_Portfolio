// ignore_for_file: camel_case_types
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';
import 'package:my_portfolio/assets_helper/app_icons.dart';
import 'package:my_portfolio/assets_helper/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/features/profile_screen/widget/expirence_widget.dart';
import 'package:my_portfolio/features/profile_screen/widget/features_project_widget.dart';
import 'package:my_portfolio/features/profile_screen/widget/proffessonal_experience_widget.dart';
import 'package:my_portfolio/features/profile_screen/widget/skill_widgets.dart';

class ProfileMobileScreen extends StatefulWidget {
  const ProfileMobileScreen({super.key});

  @override
  State<ProfileMobileScreen> createState() => _ProfileMobileScreenState();
}

class _ProfileMobileScreenState extends State<ProfileMobileScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c0A0A0A,
      appBar: AppBar(
        title: Text(
          'Profile Screen',
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
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.c1F1F1F,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset(
                            AppImages.profileImage,
                            width: 130,
                            height: 130,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const SizedBox(width: 5.0, height: 50.0),
                            Text(
                              'Be',
                              style:
                                  TextFontStyle.headLine22w600Poppins.copyWith(
                                fontSize: 15,
                                color: AppColors.cFFFFFF,
                              ),
                            ),
                            const SizedBox(width: 5.0, height: 50.0),
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Horizon',
                              ),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  RotateAnimatedText(
                                    'AWESOME',
                                    textStyle: TextFontStyle
                                        .headLine22w600Poppins
                                        .copyWith(
                                      fontSize: 15,
                                      color: AppColors.cFFFFFF,
                                    ),
                                  ),
                                  RotateAnimatedText(
                                    'OPTIMISTIC',
                                    textStyle: TextFontStyle
                                        .headLine22w600Poppins
                                        .copyWith(
                                      fontSize: 15,
                                      color: AppColors.cFFFFFF,
                                    ),
                                  ),
                                  RotateAnimatedText(
                                    'DIFFERENT',
                                    textStyle: TextFontStyle
                                        .headLine22w600Poppins
                                        .copyWith(
                                      fontSize: 15,
                                      color: AppColors.cFFFFFF,
                                    ),
                                  ),
                                ],
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'I am a Flutter developer with a passion for creating beautiful and functional mobile applications.',
                          textAlign: TextAlign.center,
                          style: TextFontStyle.headLine22w400Poppins.copyWith(
                            fontSize: 12,
                            color: AppColors.cFFFFFF,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppIcons.facebookIcons,
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              AppIcons.githubIcons,
                              width: 24,
                              height: 24,
                              color: AppColors.cFFFFFF,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              AppIcons.linkedinIcons,
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              AppIcons.instagramIcons,
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              AppIcons.twitterIcons,
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About Me',
                    style: TextFontStyle.headLine22w600Poppins.copyWith(
                      fontSize: 15,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Experienced Mobile App (Android & iOS) programmer with a proven track record in the technology sector. I have expertise in Java, Dart, Flutter, Android, and collaboration. I am an experienced professional in mobile application development with a bachelor/'s degree in computer science and engineering from the Bangladesh University of Business and Technology (BUBT).",
                  textAlign: TextAlign.justify,
                  style: TextFontStyle.textStyle12w400Poppins.copyWith(
                    fontSize: 12,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExperienceWidget(
                          experience: '2+',
                          experienceTitle: 'Years Experience',
                        ),
                        ExperienceWidget(
                          experience: '50+',
                          experienceTitle: 'Project Completed',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExperienceWidget(
                          experience: '30+',
                          experienceTitle: 'Happy Clients',
                        ),
                        ExperienceWidget(
                          experience: '10+',
                          experienceTitle: 'Awards Won',
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Skills',
                    style: TextFontStyle.headLine22w600Poppins.copyWith(
                      fontSize: 15,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SkillWidget(
                          skillName: 'Flutter',
                          skillIcon: AppIcons.flutterIcons,
                        ),
                        SkillWidget(
                          skillName: 'Dart',
                          skillIcon: AppIcons.dartIcons,
                        ),
                        SkillWidget(
                          skillName: 'Android',
                          skillIcon: AppIcons.androidIcons,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SkillWidget(
                          skillName: 'Java',
                          skillIcon: AppIcons.javaIcons,
                        ),
                        SkillWidget(
                          skillName: 'PHP',
                          skillIcon: AppIcons.phpIcons,
                        ),
                        SkillWidget(
                          skillName: 'MySQL',
                          skillIcon: AppIcons.sqlIcons,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SkillWidget(
                          skillName: 'Docker',
                          skillIcon: AppIcons.dockerIcons,
                        ),
                        SkillWidget(
                          skillName: 'Git',
                          skillIcon: AppIcons.gitIcons,
                        ),
                        SkillWidget(
                          skillName: 'Firebase',
                          skillIcon: AppIcons.firebaseIcons,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SkillWidget(
                          skillName: 'Play Store',
                          skillIcon: AppIcons.googleIcons,
                        ),
                        SizedBox(
                          width: 28,
                        ),
                        SkillWidget(
                          skillName: 'App Store',
                          skillIcon: AppIcons.appleIcon,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Latest Project UI',
                    style: TextFontStyle.headLine22w600Poppins.copyWith(
                      fontSize: 15,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Featured Projects',
                        style: TextFontStyle.headLine22w600Poppins.copyWith(
                          fontSize: 15,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'See All',
                        style: TextFontStyle.headLine22w600Poppins.copyWith(
                          fontSize: 15,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Column(
                  children: [
                    featuredProject(
                      projectTitle: 'E-commerce App',
                      projectDescription: 'This is a description of project',
                      projectSkills: 'Flutter, Dart, Firebase',
                      projectImage: AppImages.projectImage,
                    ),
                    featuredProject(
                      projectTitle: 'Task Manager App',
                      projectDescription: 'This is a description of project',
                      projectSkills: 'Flutter, Dart, Firebase',
                      projectImage: AppImages.projectImage,
                    ),
                    featuredProject(
                      projectTitle: 'Wifi Bill Manager App',
                      projectDescription: 'This is a description of project',
                      projectSkills: 'Flutter, Dart, Firebase',
                      projectImage: AppImages.projectImage,
                    ),
                    featuredProject(
                      projectTitle: 'Portfolio App',
                      projectDescription: 'This is a description of project',
                      projectSkills: 'Flutter, Dart, Firebase',
                      projectImage: AppImages.projectImage,
                    ),
                  ],
                ),
                // ListView.builder(
                //   physics: const NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: 3,
                //   itemBuilder: (context, index) {
                //     return featuredProject(
                //       projectTitle: 'Project Title $index',
                //       projectDescription:
                //           'This is a description of project $index.',
                //       projectSkills: 'Flutter, Dart, Firebase',
                //       projectImage: AppImages.projectImage,
                //     );
                //   },
                // ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Job Experience',
                    style: TextFontStyle.headLine22w600Poppins.copyWith(
                      fontSize: 15,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Column(
                  children: [
                    proffesionalExperienceWidget(
                      experienceCompany: 'Softvence Agency',
                      experienceTitle: 'Jr. Flutter Developer',
                      experienceSkills:
                          'Flutter, Dart, Firebase, iOS, Android, In App Purchase',
                      experienceYear: '2023 - Present',
                      experienceImage: AppImages.appLogo,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    proffesionalExperienceWidget(
                      experienceCompany: 'Trodev IT',
                      experienceTitle: 'Software Engineer',
                      experienceSkills:
                          'Android, Java, Firebase, MySQL, Rest API',
                      experienceYear: '2022 - 2023',
                      experienceImage: AppImages.appLogo,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    proffesionalExperienceWidget(
                      experienceCompany: 'Trodev IT',
                      experienceTitle: 'Jr. Software Engineer',
                      experienceSkills:
                          'Android, Java, Firebase, MySQL, Rest API',
                      experienceYear: '2021 - 2022',
                      experienceImage: AppImages.appLogo,
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
