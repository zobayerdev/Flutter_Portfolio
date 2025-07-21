import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';
import 'package:my_portfolio/assets_helper/app_icons.dart';
import 'package:my_portfolio/features/profile_screen/presentation/web_ui.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_contact_us_screen.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_project_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class WebProjectDetails extends StatefulWidget {
  final String title,
      description,
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

  const WebProjectDetails({
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
  });

  @override
  State<WebProjectDetails> createState() => _WebProjectDetailsState();
}

class _WebProjectDetailsState extends State<WebProjectDetails> {
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
      throw Exception('Could not launch $facebookProfileUrl');
    }
  }

  Future<void> _liveLink() async {
    final Uri uri = Uri.parse(widget.liveLink);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch ${widget.liveLink}');
    }
  }

  Future<void> buySourceCode() async {
    final Uri uri = Uri.parse(widget.sourceCodeLink);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch ${widget.sourceCodeLink}');
    }
  }

  Future<void> appleStore() async {
    final Uri uri = Uri.parse(widget.appStoreLink);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch ${widget.appStoreLink}');
    }
  }

  @override
  Widget build(BuildContext context) {
    log("===> Description: ${widget.description}");

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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ProfileWebScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Home',
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
                                        const WebProjectScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Projects',
                                style: TextFontStyle.headLine22w600Poppins
                                    .copyWith(
                                  fontSize: 15,
                                  color: AppColors.c3A86FF,
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
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 5,
                ),
                child: Container(
                  width: 1200,
                  decoration: BoxDecoration(
                    color: AppColors.c1F1F1F,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    widget.title,
                                    style: TextFontStyle.headLine34w700Poppins
                                        .copyWith(
                                      fontSize: 30,
                                      color: AppColors.boxShadow,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.boxShadow,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          widget.projectType,
                                          style: TextFontStyle
                                              .textStyle12w500Poppins
                                              .copyWith(
                                            color: AppColors.cFFFFFF,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.c02BF65,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          widget.status,
                                          style: TextFontStyle
                                              .textStyle12w500Poppins
                                              .copyWith(
                                            color: AppColors.cFFFFFF,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  widget.imageUrl,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Time Duration',
                                          style: TextFontStyle
                                              .textStyle14w500Poppins
                                              .copyWith(
                                            color: AppColors.cFFFFFF,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          widget.duration,
                                          style: TextFontStyle
                                              .textStyle12w500Poppins
                                              .copyWith(
                                            color: AppColors.cFFFFFF,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Client',
                                          style: TextFontStyle
                                              .textStyle14w500Poppins
                                              .copyWith(
                                            color: AppColors.cFFFFFF,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          widget.client,
                                          style: TextFontStyle
                                              .textStyle12w500Poppins
                                              .copyWith(
                                            color: AppColors.cFFFFFF,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tech Stack',
                                          style: TextFontStyle
                                              .textStyle14w500Poppins
                                              .copyWith(
                                            color: AppColors.cFFFFFF,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          widget.techStack,
                                          style: TextFontStyle
                                              .textStyle12w500Poppins
                                              .copyWith(
                                            color: AppColors.cFFFFFF,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Description',
                                    style: TextFontStyle.headLine24w500Poppins
                                        .copyWith(
                                      color: AppColors.boxShadow,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    widget.description,
                                    style: TextFontStyle.textStyle12w500Poppins
                                        .copyWith(
                                      color: AppColors.cFFFFFF,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'View Project',
                                    style: TextFontStyle.headLine24w500Poppins
                                        .copyWith(
                                      color: AppColors.boxShadow,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _liveLink();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.c3A86FF,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                AppIcons.global,
                                                width: 20,
                                                height: 20,
                                                color: AppColors.cFFFFFF,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Live Link',
                                                style: TextFontStyle
                                                    .textStyle12w500Poppins
                                                    .copyWith(
                                                  color: AppColors.cFFFFFF,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        _liveLink();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.c3A86FF,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                AppIcons.google_play,
                                                width: 20,
                                                height: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Play Store',
                                                style: TextFontStyle
                                                    .textStyle12w500Poppins
                                                    .copyWith(
                                                  color: AppColors.cFFFFFF,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        appleStore();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.c3A86FF,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                AppIcons.app_store,
                                                width: 20,
                                                height: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'App Store',
                                                style: TextFontStyle
                                                    .textStyle12w500Poppins
                                                    .copyWith(
                                                  color: AppColors.cFFFFFF,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        buySourceCode();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.c47B54C,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                AppIcons.google_drive,
                                                width: 20,
                                                height: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Buy Source Code',
                                                style: TextFontStyle
                                                    .textStyle12w500Poppins
                                                    .copyWith(
                                                  color: AppColors.cFFFFFF,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                child: Center(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
