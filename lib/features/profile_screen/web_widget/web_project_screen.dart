import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_description.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';
import 'package:my_portfolio/assets_helper/app_icons.dart';
import 'package:my_portfolio/assets_helper/app_images.dart';
import 'package:my_portfolio/features/profile_screen/presentation/web_ui.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_contact_us_screen.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_project_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class WebProjectScreen extends StatefulWidget {
  const WebProjectScreen({super.key});

  @override
  State<WebProjectScreen> createState() => _WebProjectScreenState();
}

class _WebProjectScreenState extends State<WebProjectScreen> {
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
                      horizontal: 20,
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'My Projects',
                            style: TextFontStyle.headLine22w600Poppins.copyWith(
                              fontSize: 30,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'I have worked on several projects, including web development, mobile applications, and more. Here are some of my notable projects.',
                            style: TextFontStyle.headLine22w600Poppins.copyWith(
                              fontSize: 15,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          // * First Row [Trip Guide, Wifi Bill Manager, Holistic Horse Remedies]
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // * Trip Guide Project
                              webFeaturedProject(
                                title: 'Trip Guide',
                                description:
                                    AppDescription.tripGuideDescription,
                                skills: 'Flutter, Dart, PHP, Laravel, MySQL',
                                imageUrl: AppImages.trip_guide,
                                liveLink: 'https://tripguide.zobayerdev.top',
                                sourceCodeLink:
                                    'https://api.whatsapp.com/send/?phone=%2B8801615257555&text&type=phone_number&app_absent=0',
                                duration: '2 month',
                                client: 'Trodev IT',
                                techStack: 'Flutter, Dart, PHP, Laravel, MySQL',
                                projectType: 'Guide App Related',
                                status: 'Completed',
                                price: 'Negotiable',
                                playStoreLink: 'Not Available',
                                appStoreLink: 'Not Available',
                                shortDescription:
                                    '🚀 TourGuide: Your Ultimate Travel Companion',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              // * Wifi Bill Project
                              webFeaturedProject(
                                title: 'Wifi Bill Manager',
                                description:
                                    AppDescription.wifiBillManagerDescription,
                                skills: 'Flutter, Dart, PHP, Laravel, MySQL',
                                imageUrl: AppImages.wifi_bill_manager,
                                liveLink: 'https://wifibill.zobayerdev.top',
                                sourceCodeLink:
                                    'https://api.whatsapp.com/send/?phone=%2B8801615257555&text&type=phone_number&app_absent=0',
                                duration: '2 month',
                                client: 'Trodev IT',
                                techStack: 'Flutter, Dart, PHP, Laravel, MySQL',
                                projectType: 'Billing App Related',
                                status: 'Completed',
                                price: 'Negotiable',
                                playStoreLink: 'Not Available',
                                appStoreLink: 'Not Available',
                                shortDescription:
                                    '🚀 WiFi Billing Manager: Streamlined Billing & Customer Management',
                              ),

                              SizedBox(
                                width: 20,
                              ),

                              // * Holistic Horse Remedies Project
                              webFeaturedProject(
                                title: 'Holistic Horse Remedies',
                                description: AppDescription.udit,
                                skills: 'Flutter, Dart, PHP, Laravel, MySQL',
                                imageUrl: AppImages.udit,
                                liveLink:
                                    'https://play.google.com/store/apps/details?id=com.theholistichorseworks.app&hl=en',
                                sourceCodeLink: 'Not Available',
                                duration: '2 month',
                                client: 'Holistic Horse Works Group',
                                techStack: 'Flutter, Dart, PHP, Laravel, MySQL',
                                projectType: 'Horse Training Related',
                                status: 'Completed',
                                price: 'Negotiable',
                                playStoreLink:
                                    'https://play.google.com/store/apps/details?id=com.theholistichorseworks.app&hl=en',
                                appStoreLink:
                                    'https://apps.apple.com/us/app/holistic-horseworks-remedies/id6742052548',
                                shortDescription:
                                    '🚀 Holistic Horse Remedies: Empowering Equine Wellness',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          // * Second Row [Trip Guide, ]
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // * UIP TV App
                              webFeaturedProject(
                                title: 'UIP TV App',
                                description: AppDescription.tvApp,
                                skills: 'Flutter, Dart, PHP, Laravel, MySQL',
                                imageUrl: AppImages.tvApp,
                                liveLink: 'https://uiptv.zobayerdev.top',
                                sourceCodeLink:
                                    'https://api.whatsapp.com/send/?phone=%2B8801615257555&text&type=phone_number&app_absent=0',
                                duration: '1 Weeks',
                                client: 'Trodev IT',
                                techStack: 'Flutter, Dart, PHP, Laravel, MySQL',
                                projectType: 'Streaming App Related',
                                status: 'Completed',
                                price: 'Negotiable',
                                playStoreLink: 'Not Available',
                                appStoreLink: 'Not Available',
                                shortDescription:
                                    '🚀 UIP TV: Your Ultimate Streaming Companion',
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
