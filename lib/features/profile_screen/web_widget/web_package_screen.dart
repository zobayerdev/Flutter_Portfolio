import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_description.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';
import 'package:my_portfolio/assets_helper/app_icons.dart';
import 'package:my_portfolio/assets_helper/app_images.dart';
import 'package:my_portfolio/features/profile_screen/presentation/web_ui.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_contact_us_screen.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_project_screen.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/widgets/web_package_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class WebPackageScreen extends StatefulWidget {
  const WebPackageScreen({super.key});

  @override
  State<WebPackageScreen> createState() => _WebPackageScreenState();
}

class _WebPackageScreenState extends State<WebPackageScreen> {
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
                            // * Home Screen
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

                            // * Projects
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
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),

                            // * Flutter Package
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const WebPackageScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Flutter Package',
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

                            // * Contact Me
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
                      horizontal: 20,
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'My Flutter Packages',
                            style: TextFontStyle.headLine22w600Poppins.copyWith(
                              fontSize: 30,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'I have already published some packages on pub.dev. You can check them out by clicking the links below.',
                            style: TextFontStyle.headLine22w600Poppins.copyWith(
                              fontSize: 15,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // * Prayer Timer
                              webPackageWidget(
                                title: 'Prayer Timer',
                                description: AppDescription.prayerTimer,
                                skills: 'Flutter, Dart',
                                imageUrl: AppImages.customSocialButton,
                                liveLink:
                                    'https://github.com/zobayerdev/Prayer_Timer_Package',
                                sourceCodeLink:
                                    'https://api.whatsapp.com/send/?phone=%2B8801615257555&text&type=phone_number&app_absent=0',
                                duration: '1 Weeks',
                                client: 'Trodev IT',
                                techStack: 'Flutter, Dart, PHP, Laravel, MySQL',
                                projectType: 'Prayer Timer Package',
                                status: 'Completed',
                                price: 'Negotiable',
                                playStoreLink: 'Not Available',
                                appStoreLink:
                                    'https://pub.dev/packages/prayer_timer',
                                shortDescription:
                                    'Prayer Timer is a customizable circular progress bar widget for displaying Islamic prayer times in Flutter apps.',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
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
