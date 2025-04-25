// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:my_portfolio/assets_helper/app_colors.dart';
// import 'package:my_portfolio/assets_helper/app_fonts.dart';
// import 'package:my_portfolio/assets_helper/app_icons.dart';
// import 'package:my_portfolio/common_widgets/custom_text_field.dart';
// import 'package:my_portfolio/features/profile_screen/presentation/web_ui.dart';
// import 'package:my_portfolio/features/profile_screen/web_widget/web_project_screen.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ContactUsScreen extends StatefulWidget {
//   const ContactUsScreen({super.key});

//   @override
//   State<ContactUsScreen> createState() => _ContactUsScreenState();
// }

// class _ContactUsScreenState extends State<ContactUsScreen> {
//   final String twitterProfileUrl = 'https://twitter.com/your_twitter_handle';
//   final String facebookProfileUrl =
//       'https://www.facebook.com/zobayer.hasan.nayem';

//   Future<void> _launchTwitter() async {
//     final Uri uri = Uri.parse(twitterProfileUrl);
//     if (!await launchUrl(uri)) {
//       throw Exception('Could not launch $twitterProfileUrl');
//     }
//   }

//   Future<void> _launchFacebook() async {
//     final Uri uri = Uri.parse(facebookProfileUrl);
//     if (!await launchUrl(uri)) {
//       throw Exception('Could not launch $twitterProfileUrl');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.c0A0A0A,
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 5),
//                 child: Container(
//                   height: 50,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                     color: AppColors.c1F1F1F,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Md. Zobayer Hasan Nayem',
//                               style:
//                                   TextFontStyle.headLine22w600Poppins.copyWith(
//                                 fontSize: 15,
//                                 color: AppColors.cFFFFFF,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         const ProfileWebScreen(),
//                                   ),
//                                 );
//                               },
//                               child: Text(
//                                 'Home',
//                                 style: TextFontStyle.headLine22w600Poppins
//                                     .copyWith(
//                                   fontSize: 15,
//                                   color: AppColors.cFFFFFF,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 20,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         const WebProjectScreen(),
//                                   ),
//                                 );
//                               },
//                               child: Text(
//                                 'Projects',
//                                 style: TextFontStyle.headLine22w600Poppins
//                                     .copyWith(
//                                   fontSize: 15,
//                                   color: AppColors.cFFFFFF,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 20,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         const ContactUsScreen(),
//                                   ),
//                                 );
//                               },
//                               child: Text(
//                                 'Contact Me',
//                                 style: TextFontStyle.headLine22w600Poppins
//                                     .copyWith(
//                                   fontSize: 15,
//                                   color: AppColors.c3A86FF,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 20,
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 130,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 5,
//                   vertical: 5,
//                 ),
//                 child: Container(
//                   width: 1200,
//                   decoration: BoxDecoration(
//                     color: AppColors.c1F1F1F,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 20,
//                     ),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: AppColors.c1F1F1F,
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             'Contact Me',
//                             style: TextFontStyle.headLine22w600Poppins.copyWith(
//                               fontSize: 20,
//                               color: AppColors.cFFFFFF,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             'If you want to get in touch with me, please fill out the form below.',
//                             style:
//                                 TextFontStyle.textStyle18w500Poppins.copyWith(
//                               fontSize: 15,
//                               color: AppColors.cFFFFFF,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           const CustomTextField_5(
//                             width: 600,
//                             hintText: 'Enter your name',
//                             borderColor: AppColors.cDFE1E6,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           const CustomTextField_5(
//                             width: 600,
//                             hintText: 'Enter your email',
//                             borderColor: AppColors.cDFE1E6,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           const CustomTextField_5(
//                             width: 600,
//                             hintText: 'Enter your mobile number',
//                             borderColor: AppColors.cDFE1E6,
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           SizedBox(
//                             width: 600,
//                             child: TextField(
//                               maxLines: 5, // Allow multiple lines
//                               style: const TextStyle(
//                                 color: AppColors.cFFFFFF,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                               textAlign:
//                                   TextAlign.left, // Align text to the left
//                               textAlignVertical: TextAlignVertical
//                                   .top, // Align text vertically to the top
//                               decoration: InputDecoration(
//                                 hintText: 'Enter something...',
//                                 hintStyle: TextFontStyle.textStyle14w400Poppins
//                                     .copyWith(
//                                   fontSize: 14,
//                                   color: AppColors.cFFFFFF,
//                                 ), // Style the hint text
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: const BorderSide(
//                                     color: AppColors.cDFE1E6,
//                                     width: 0.6,
//                                   ),
//                                 ),
//                                 contentPadding: const EdgeInsets.only(
//                                   left: 10,
//                                   top: 20,
//                                 ), // Padding inside the TextField
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           SizedBox(
//                             width: 600,
//                             height: 50, // Set the width to 600
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 // Show the dialog
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       title: Text(
//                                         'Message',
//                                         style: TextFontStyle
//                                             .headLine22w600Poppins
//                                             .copyWith(
//                                           fontSize: 15,
//                                           color: AppColors.c000000,
//                                         ),
//                                       ),
//                                       content: Text(
//                                         'Your message has been sent!',
//                                         style: TextFontStyle
//                                             .headLine22w600Poppins
//                                             .copyWith(
//                                           fontSize: 15,
//                                           color: AppColors.c000000,
//                                         ),
//                                       ),
//                                       actions: <Widget>[
//                                         TextButton(
//                                           onPressed: () {
//                                             Navigator.of(context)
//                                                 .pop(); // Close the dialog
//                                           },
//                                           child: Text(
//                                             'OK',
//                                             style: TextFontStyle
//                                                 .headLine22w600Poppins
//                                                 .copyWith(
//                                               fontSize: 15,
//                                               color: AppColors.c000000,
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     );
//                                   },
//                                 );
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: AppColors.c3A86FF,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               child: Text(
//                                 'Send Message',
//                                 style: TextFontStyle.headLine22w600Poppins
//                                     .copyWith(
//                                   fontSize: 15,
//                                   color: AppColors.cFFFFFF,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 5,
//                 ),
//                 child: Center(
//                   child: Container(
//                     width: 1200,
//                     decoration: BoxDecoration(
//                       color: AppColors.c1F1F1F,
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(
//                         10,
//                       ),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 15.0,
//                               vertical: 10,
//                             ),
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "Portfolio",
//                                       style: TextFontStyle.headLine22w400Poppins
//                                           .copyWith(
//                                         fontSize: 22,
//                                         color: AppColors.cFFFFFF,
//                                       ),
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         GestureDetector(
//                                           onTap: _launchFacebook,
//                                           child: SvgPicture.asset(
//                                             AppIcons.facebookIcons,
//                                             width: 24,
//                                             height: 24,
//                                           ),
//                                         ),
//                                         const SizedBox(
//                                           width: 10,
//                                         ),
//                                         SvgPicture.asset(
//                                           AppIcons.githubIcons,
//                                           width: 24,
//                                           height: 24,
//                                           color: AppColors.cFFFFFF,
//                                         ),
//                                         const SizedBox(
//                                           width: 10,
//                                         ),
//                                         SvgPicture.asset(
//                                           AppIcons.linkedinIcons,
//                                           width: 24,
//                                           height: 24,
//                                         ),
//                                         const SizedBox(
//                                           width: 10,
//                                         ),
//                                         SvgPicture.asset(
//                                           AppIcons.instagramIcons,
//                                           width: 24,
//                                           height: 24,
//                                         ),
//                                         const SizedBox(
//                                           width: 10,
//                                         ),
//                                         GestureDetector(
//                                           onTap: _launchTwitter,
//                                           child: SvgPicture.asset(
//                                             AppIcons.twitterIcons,
//                                             width: 24,
//                                             height: 24,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 Text(
//                                   "2025 - All right reserved by Md. Zobayer Hasan Nayem",
//                                   style: TextFontStyle.textStyle14w500Poppins
//                                       .copyWith(
//                                     fontSize: 12,
//                                     color: AppColors.cFFFFFF,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/assets_helper/app_colors.dart';
import 'package:my_portfolio/assets_helper/app_fonts.dart';
import 'package:my_portfolio/assets_helper/app_icons.dart';
import 'package:my_portfolio/assets_helper/app_lottie.dart';
import 'package:my_portfolio/common_widgets/custom_text_field.dart';
import 'package:my_portfolio/features/profile_screen/presentation/web_ui.dart';
import 'package:my_portfolio/features/profile_screen/web_widget/web_project_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http; // Import http package
import 'dart:convert';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  bool isLoading = false;
  final String twitterProfileUrl = 'https://twitter.com/your_twitter_handle';
  final String facebookProfileUrl =
      'https://www.facebook.com/zobayer.hasan.nayem';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

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

  Future<void> _sendMessage() async {
    // Get data from text fields
    final String name = nameController.text;
    final String email = emailController.text;
    final String mobile = mobileController.text;
    final String message = messageController.text;

    final url = Uri.parse(
        'https://jobpro.zobayerdev.top/api/zobayer'); // Replace with your API URL

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'name': name,
        'email': email,
        'phone': mobile,
        'message': message,
      }),
    );

    if (response.statusCode == 200) {
      // Show success dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Message',
              style: TextFontStyle.headLine22w600Poppins.copyWith(
                fontSize: 15,
                color: AppColors.c000000,
              ),
            ),
            content: Text(
              'Your message has been sent!',
              style: TextFontStyle.headLine22w600Poppins.copyWith(
                fontSize: 15,
                color: AppColors.c000000,
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  nameController.clear();
                  emailController.clear();
                  mobileController.clear();
                  messageController.clear(); // Clear the text fields
                  // Close the dialog
                  setState(() {
                    isLoading = false;
                  });
                },
                child: Text(
                  'OK',
                  style: TextFontStyle.headLine22w600Poppins.copyWith(
                    fontSize: 15,
                    color: AppColors.c000000,
                  ),
                ),
              ),
            ],
          );
        },
      );
    } else {
      // Show error dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Error',
              style: TextFontStyle.headLine22w600Poppins.copyWith(
                fontSize: 15,
                color: AppColors.c000000,
              ),
            ),
            content: Text(
              'Failed to send the message. Please try again.',
              style: TextFontStyle.headLine22w600Poppins.copyWith(
                fontSize: 15,
                color: AppColors.c000000,
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text(
                  'OK',
                  style: TextFontStyle.headLine22w600Poppins.copyWith(
                    fontSize: 15,
                    color: AppColors.c000000,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c0A0A0A,
      body: SafeArea(
        child: Center(
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
                                  color: AppColors.c3A86FF,
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
                height: 130,
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
                      decoration: BoxDecoration(
                        color: AppColors.c1F1F1F,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Contact Me',
                            style: TextFontStyle.headLine22w600Poppins.copyWith(
                              fontSize: 20,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'If you want to get in touch with me, please fill out the form below.',
                            style:
                                TextFontStyle.textStyle18w500Poppins.copyWith(
                              fontSize: 15,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField_5(
                            controller: nameController,
                            width: 600,
                            hintText: 'Enter your name',
                            borderColor: AppColors.cDFE1E6,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField_5(
                            controller: emailController,
                            width: 600,
                            hintText: 'Enter your email',
                            borderColor: AppColors.cDFE1E6,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField_5(
                            controller: mobileController,
                            width: 600,
                            hintText: 'Enter your mobile number',
                            borderColor: AppColors.cDFE1E6,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 600,
                            child: TextField(
                              controller: messageController,
                              maxLines: 5, // Allow multiple lines
                              style:
                                  TextFontStyle.textStyle14w400Poppins.copyWith(
                                color: AppColors.cFFFFFF,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign:
                                  TextAlign.left, // Align text to the left
                              textAlignVertical: TextAlignVertical
                                  .top, // Align text vertically to the top
                              decoration: InputDecoration(
                                hintText: 'Enter something...',
                                hintStyle: TextFontStyle.textStyle14w400Poppins
                                    .copyWith(
                                  fontSize: 14,
                                  color: AppColors.cFFFFFF,
                                ), // Style the hint text
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: AppColors.cDFE1E6,
                                    width: 0.6,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.only(
                                  left: 10,
                                  top: 20,
                                ), // Padding inside the TextField
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          isLoading // If the loading state is true, show loading
                              ? Container(
                                  height: 50,
                                  width: 600,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: AppColors.primaryColor,
                                      width: 2,
                                    ),
                                  ),
                                  child: Lottie.asset(
                                    AppLottie.loading,
                                    height: 100,
                                    width: 100,
                                  ),
                                )
                              : SizedBox(
                                  width: 600,
                                  height: 50, // Set the width to 600
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        isLoading = true;
                                      });
                                      _sendMessage();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.c3A86FF,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      'Send Message',
                                      style: TextFontStyle.headLine22w600Poppins
                                          .copyWith(
                                        fontSize: 15,
                                        color: AppColors.cFFFFFF,
                                      ),
                                    ),
                                  ),
                                ),
                          const SizedBox(
                            height: 20,
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
