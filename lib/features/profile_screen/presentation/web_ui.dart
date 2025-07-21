import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';
import 'package:my_portfolio/assets_helper/app_icons.dart';
import 'package:my_portfolio/assets_helper/app_images.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_contact_us_screen.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_proffessonal_experience_widget.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_project_screen.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_skill_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileWebScreen extends StatefulWidget {
  const ProfileWebScreen({super.key});

  @override
  State<ProfileWebScreen> createState() => _ProfileWebScreenState();
}

class _ProfileWebScreenState extends State<ProfileWebScreen> {
  
  final String twitterProfileUrl = 'https://twitter.com/your_twitter_handle';
  final String facebookProfileUrl =
      'https://www.facebook.com/zobayer.hasan.nayem';
  final String githubProfileUrl = 'https://github.com/zobayerdev';
  final String instagramProfileUrl = 'https://www.instagram.com/zobayerdev/';
  final String linkedinProfileUrl = 'https://www.linkedin.com/in/zobayerdev/';

  Future<void> _launchTwitter() async {
    final Uri uri = Uri.parse(twitterProfileUrl);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $twitterProfileUrl');
    }
  }

  Future<void> _launchFacebook() async {
    final Uri uri = Uri.parse(facebookProfileUrl);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $facebookProfileUrl');
    }
  }

  Future<void> _launchGithub() async {
    final Uri uri = Uri.parse(githubProfileUrl);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $githubProfileUrl');
    }
  }

  Future<void> _launchLinkedin() async {
    final Uri uri = Uri.parse(linkedinProfileUrl);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $linkedinProfileUrl');
    }
  }

  Future<void> _launchInstagram() async {
    final Uri uri = Uri.parse(instagramProfileUrl);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $instagramProfileUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c0A0A0A,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.c1F1F1F,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Md. Zobayer Hasan Nayem',
                              style:
                                  TextFontStyle.headLine22w600Poppins.copyWith(
                                fontSize: 15,
                                color: AppColors.cFFFFFF,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Home',
                              style:
                                  TextFontStyle.headLine22w600Poppins.copyWith(
                                fontSize: 15,
                                color: AppColors.c3A86FF,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const WebProjectScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Projects',
                                style: TextFontStyle.headLine22w600Poppins
                                    .copyWith(
                                  fontSize: 15,
                                  color: AppColors.cFFFFFF,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ContactUsScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Contact Me',
                                style: TextFontStyle.headLine22w600Poppins
                                    .copyWith(
                                  fontSize: 15,
                                  color: AppColors.cFFFFFF,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 5,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 1200,
                      decoration: BoxDecoration(
                        color: AppColors.c1F1F1F,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi I'm",
                                  style: TextFontStyle.textStyle14w500Poppins
                                      .copyWith(
                                    color: AppColors.cFFFFFF,
                                  ),
                                ),
                                Text(
                                  "Md. Zobayer Hasan Nayem",
                                  style: TextFontStyle.textStyle14w500Poppins
                                      .copyWith(
                                    fontSize: 20,
                                    color: AppColors.cFFFFFF,
                                  ),
                                ),
                                Text(
                                  "Full Stack Mobile App Developer",
                                  style: TextFontStyle.textStyle14w700Poppins
                                      .copyWith(
                                    fontSize: 17,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Passionate about creating beautiful and functional web applications. \nSpecialized in modern web technologies and scalable architecture.",
                                  style: TextFontStyle.textStyle12w400Poppins
                                      .copyWith(
                                    fontSize: 13,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const WebProjectScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'View My Work',
                                    style: TextFontStyle.textStyle12w400Poppins
                                        .copyWith(
                                      fontSize: 12,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  AppImages.profileImage,
                                  height: 400,
                                  width: 400,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Container(
                  width: 1200,
                  decoration: BoxDecoration(
                    color: AppColors.c1F1F1F,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'About Me',
                        style: TextFontStyle.headLine22w400Poppins.copyWith(
                          fontSize: 22,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // * Educattion Pard
                            // Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Row(
                            //       children: [
                            //         Text(
                            //           "🎓 Bsc in Computer Science and Engineering",
                            //           style: TextFontStyle
                            //               .textStyle12w400Poppins
                            //               .copyWith(
                            //             fontSize: 13,
                            //             color: AppColors.white,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //     const SizedBox(
                            //       height: 5,
                            //     ),
                            //     Row(
                            //       children: [
                            //         Text(
                            //           "💼 3+ years of proffessional experience",
                            //           style: TextFontStyle
                            //               .textStyle12w400Poppins
                            //               .copyWith(
                            //             fontSize: 13,
                            //             color: AppColors.white,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //     const SizedBox(
                            //       height: 5,
                            //     ),
                            //     Row(
                            //       children: [
                            //         Text(
                            //           "🏢 Worked with 3 companies",
                            //           style: TextFontStyle
                            //               .textStyle12w400Poppins
                            //               .copyWith(
                            //             fontSize: 13,
                            //             color: AppColors.white,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ],
                            // ),

                            // * Education Part
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // * Bachelor's Degree
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "🎓 Bsc in Computer Science and Engineering",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                    Text(
                                      "      - Bangladesh University of Business and Technology (BUBT)",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    Text(
                                      "      - 2020 - 2024",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    Text(
                                      "      - Final Year Project: 'Bangla Character Handwritten Recognition'",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),

                                // * Higher Secondary Certificate (HSC)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "🎓 Higher Secondary Certificate (HSC)",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 16,
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "      - Bangladesh Air Force Shaheen College, Kurmitola",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    Text(
                                      "      - 2017 - 2019",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    Text(
                                      "      - Major: 'Science'",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),

                                // * Secondary School Certificate (SSC)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "🎓 Secondary School Certificate (SSC)",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 16,
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "      - Isphani High School & College",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    Text(
                                      "      - 2016 - 2017",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    Text(
                                      "      - Major: 'Science'",
                                      style: TextFontStyle
                                          .textStyle12w400Poppins
                                          .copyWith(
                                        fontSize: 13,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            // * Skill Part
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "I am a Proffessional Mobile App Developer (android & iOS)",
                                  style: TextFontStyle.textStyle12w400Poppins
                                      .copyWith(
                                    fontSize: 16,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "With over 3 years of experience in Mobile Application development,\nI specialize in building scalable applications using modern\ntechnologies.\nMy passion lies in creating efficient solutions that solve real-world problems.",
                                  style: TextFontStyle.textStyle12w400Poppins
                                      .copyWith(
                                    fontSize: 13,
                                    color: AppColors.primaryColor,
                                  ),
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    WebSkillWidget(
                                      skillName: 'Flutter',
                                      skillIcon: AppIcons.flutterIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    WebSkillWidget(
                                      skillName: 'Dart',
                                      skillIcon: AppIcons.dartIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    WebSkillWidget(
                                      skillName: 'Android',
                                      skillIcon: AppIcons.androidIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    WebSkillWidget(
                                      skillName: 'Java',
                                      skillIcon: AppIcons.javaIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    WebSkillWidget(
                                      skillName: 'MySQL',
                                      skillIcon: AppIcons.sqlIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    WebSkillWidget(
                                      skillName: 'Docker',
                                      skillIcon: AppIcons.dockerIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    WebSkillWidget(
                                      skillName: 'Git',
                                      skillIcon: AppIcons.gitIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    WebSkillWidget(
                                      skillName: 'Firebase',
                                      skillIcon: AppIcons.firebaseIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    WebSkillWidget(
                                      skillName: 'PlayStore',
                                      skillIcon: AppIcons.googleIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    WebSkillWidget(
                                      skillName: 'App Store',
                                      skillIcon: AppIcons.appleIcon,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    WebSkillWidget(
                                      skillName: 'PHP',
                                      skillIcon: AppIcons.phpIcons,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    WebSkillWidget(
                                      skillName: 'GitHub',
                                      skillIcon: AppIcons.githubIcons,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Container(
                  width: 1200,
                  decoration: BoxDecoration(
                    color: AppColors.c1F1F1F,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 10,
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Proffessional Experience',
                                style: TextFontStyle.headLine22w400Poppins
                                    .copyWith(
                                  fontSize: 22,
                                  color: AppColors.cFFFFFF,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  proffesionalExperienceWebWidget(
                                    experienceCompany: 'Softvence Agency',
                                    experienceTitle: 'Jr. Flutter Developer',
                                    experienceSkills:
                                        'Flutter, Dart, Firebase, iOS, Android, \nIn App Purchase',
                                    experienceYear: '2023 - Present',
                                    experienceImage: AppIcons.notesIcons,
                                  ),
                                  proffesionalExperienceWebWidget(
                                    experienceCompany: 'Trodev IT',
                                    experienceTitle: 'Software Engineer',
                                    experienceSkills:
                                        'Android, Java, Firebase, MySQL, Rest API',
                                    experienceYear: '2022 - 2023',
                                    experienceImage: AppIcons.notesIcons,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  proffesionalExperienceWebWidget(
                                    experienceCompany: 'Trodev IT',
                                    experienceTitle: 'Jr. Software Engineer',
                                    experienceSkills:
                                        'Android, Java, Firebase, MySQL, Rest API',
                                    experienceYear: '2021 - 2022',
                                    experienceImage: AppIcons.notesIcons,
                                  ),
                                  // proffesionalExperienceWebWidget(
                                  //   experienceCompany: 'Softvence Agency',
                                  //   experienceTitle: 'Jr. Flutter Developer',
                                  //   experienceSkills:
                                  //       'Flutter, Dart, Firebase, SqLite, Apple Store, iOS',
                                  //   experienceYear: '2024-Present',
                                  //   experienceImage: AppIcons.notesIcons,
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // * Bottom Nav Section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Container(
                  width: 1200,
                  decoration: BoxDecoration(
                    color: AppColors.c1F1F1F,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 10,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Portfolio",
                                    style: TextFontStyle.headLine22w400Poppins
                                        .copyWith(
                                      fontSize: 22,
                                      color: AppColors.cFFFFFF,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: _launchFacebook,
                                        child: SvgPicture.asset(
                                          AppIcons.facebookIcons,
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      GestureDetector(
                                        onTap: _launchGithub,
                                        child: SvgPicture.asset(
                                          AppIcons.githubIcons,
                                          width: 24,
                                          height: 24,
                                          color: AppColors.cFFFFFF,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      GestureDetector(
                                        onTap: _launchLinkedin,
                                        child: SvgPicture.asset(
                                          AppIcons.linkedinIcons,
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      GestureDetector(
                                        onTap: _launchInstagram,
                                        child: SvgPicture.asset(
                                          AppIcons.instagramIcons,
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      GestureDetector(
                                        onTap: _launchTwitter,
                                        child: SvgPicture.asset(
                                          AppIcons.twitterIcons,
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                
                                
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "2025 - All right reserved by Md. Zobayer Hasan Nayem",
                                style: TextFontStyle.textStyle14w500Poppins
                                    .copyWith(
                                  fontSize: 12,
                                  color: AppColors.cFFFFFF,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
