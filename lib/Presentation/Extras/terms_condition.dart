import 'package:emergency_app/Core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditionPage extends StatelessWidget {
  const TermsAndConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: kLightRed,
          backgroundColor: kDarkRed,
          title: Text(
            'Terms & Conditions',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, color: kWhite, fontSize: 30),
          ),
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.1,
            height: MediaQuery.of(context).size.height / 1.2,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    blurRadius: 25,
                    spreadRadius: 1,
                    color: kDarkRed,
                    offset: Offset(8, 12))
              ],
              color: kWhite,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: SingleChildScrollView(
                child: Text(
                  '''Please read these Terms and Conditions ("Terms") carefully before using Help Link Emergency Assistance App.
            
 By accessing or using the Service, you agree to be bound by these Terms. If you disagree with any part of the terms, then you may not access the Service.
 
1. Use of the Service:
 
 1.1 You must be at least 18 years old to use this Service.
 
 1.2 You are responsible for maintaining the confidentiality of your account and password. You agree to accept responsibility for all activities that occur under your account or password.
 
 1.3 You must notify us immediately upon becoming aware of any breach of security or unauthorized use of your account.
 
2. Emergency Assistance Features:
 
 2.1 Help Link is a tool designed to assist users in emergency situations. While we strive to provide reliable and accurate information, we cannot guarantee the availability, accuracy, or timeliness of the services provided by emergency personnel.
 
 2.2 You acknowledge that Help Link relies on third-party services such as emergency services, telecommunications providers, and mapping services. Any issues with these third-party services are beyond our control, and we cannot be held responsible for their performance.
 
3. User Conduct:
 
 3.1 You agree not to use the Service for any unlawful purpose or in any way that could damage, disable, overburden, or impair the Service.
 
 3.2 You shall not attempt to gain unauthorized access to any portion or feature of the Service or any other systems or networks connected to the Service.
 
 3.3 You agree not to interfere with or disrupt the operation of the Service or any servers or networks connected to the Service.
 
4. Privacy and Data Safety:
 
 4.1 Your use of the Service is also governed by our Privacy Policy. Please review our Privacy Policy to understand how we collect, use, and disclose information.
 
 4.2 We are committed to protecting the privacy and security of your personal information. We implement industry-standard security measures to safeguard your data against unauthorized access, alteration, disclosure, or destruction.
 
 4.3 While we take reasonable steps to protect your data, you acknowledge that no method of transmission over the internet or electronic storage is 100% secure. Therefore, we cannot guarantee absolute security of your data.
 
5. Modifications to the Service:
 
 5.1 We reserve the right to modify or discontinue, temporarily or permanently, the Service or any part of it with or without notice.
 
 5.2 We shall not be liable to you or any third party for any modification, price change, suspension, or discontinuance of the Service.
 
6. Termination:
 
 6.1 We may terminate or suspend access to our Service immediately, without prior notice or liability, for any reason whatsoever, including without limitation if you breach the Terms.
 
 6.2 All provisions of the Terms which by their nature should survive termination shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity, and limitations of liability.
 
7. Governing Law:
 
 7.1 These Terms shall be governed and construed in accordance with the laws of our Country, without regard to its conflict of law provisions.
 
8. Changes to Terms:
 
 8.1 We reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material, we will try to provide at least 30 days' notice prior to any new terms taking effect.
 
 8.2 By continuing to access or use our Service after those revisions become effective, you agree to be bound by the revised terms. If you do not agree to the new terms, please stop using the Service.
 
9. Contact Information:
 
 9.1 For any questions about these Terms, please contact us at helpLinkEmApp@gmail.com.
 
 By using the Help Link Emergency Assistance App, you agree to these Terms and Conditions. Thank you for your understanding and cooperation.''',
                  style: GoogleFonts.robotoMono(fontSize: 16),
                ),
              ),
            ),
          ),
        ));
  }
}
