import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';
import 'package:my_portfolio/assets_helper/app_icons.dart';
import 'package:my_portfolio/assets_helper/app_images.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/proffessonal_experience_web_widget.dart';
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

  Future<void> _launchTwitter() async {
    final Uri uri = Uri.parse(twitterProfileUrl);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $twitterProfileUrl');
    }
  }

  Future<void> _launchFacebook() async {
    final Uri uri = Uri.parse(facebookProfileUrl);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $twitterProfileUrl');
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
                                color: AppColors.cFFFFFF,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Projects',
                              style:
                                  TextFontStyle.headLine22w600Poppins.copyWith(
                                fontSize: 15,
                                color: AppColors.cFFFFFF,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Contact Me',
                              style:
                                  TextFontStyle.headLine22w600Poppins.copyWith(
                                fontSize: 15,
                                color: AppColors.cFFFFFF,
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
                                  onPressed: () {},
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
                          children: [
                            Image.asset(
                              AppImages.bgImages,
                              height: 500,
                              width: 500,
                            ),
                            // 2nd part
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "With over 5 years of experience in web development,\nI specialize in building scalable applications using modern\ntechnologies.\nMy passion lies in creating efficient solutions that solve real-world problems.",
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "🎓 Bsc in Computer Science and Engineering",
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
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "💼 3+ years of proffessional experience",
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
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "🏢 Worked with 3 companies",
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
