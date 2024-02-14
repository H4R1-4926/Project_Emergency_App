// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:emergency_app/Application/Pass/pass_bloc.dart';
import 'package:emergency_app/Core/colors.dart';
import 'package:emergency_app/Domain/User/Model/user_model/user_model.dart';
import 'package:emergency_app/Infrastrucure/User/user_repository.dart';
import 'package:emergency_app/Presentation/Extras/terms_condition.dart';
import 'package:emergency_app/Presentation/Login/login.dart';
import 'package:emergency_app/Presentation/Splash/splash_screen.dart';
import 'package:emergency_app/Presentation/Widgets/bg_widgets.dart';
import 'package:emergency_app/Presentation/Widgets/button.dart';
import 'package:emergency_app/Presentation/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController secPhoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController cPassController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? selectedValue;
  final gender = ['Male', 'Female', 'Others'];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);

    return Scaffold(
      body: Stack(
        children: [
          BgDesign1(
              size: size,
              margin: EdgeInsets.only(top: size.size.height / 1.5),
              borerRdaius: BorderRadius.vertical(
                  top: Radius.elliptical(size.size.width, 200))),
          BgDesign1(
              size: size,
              margin: EdgeInsets.only(bottom: size.size.height / 1.5),
              borerRdaius: BorderRadius.vertical(
                  bottom: Radius.elliptical(size.size.width, 200))),
          Center(
            child: Container(
              height: size.size.height / 1.15,
              width: size.size.width / 1.2,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(15)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/img/logo_trans.png'),
                        ),
                        NormalTextField(
                            validator: RequiredValidator(
                                errorText: 'This field is required'),
                            controller: nameController,
                            keyboardType: TextInputType.name,
                            label: 'Name',
                            hintText: 'Enter Name'),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              hint: Text('Select Gender',
                                  style: GoogleFonts.roboto()),
                              value: selectedValue,
                              items: gender.map((e) {
                                return DropdownMenuItem(
                                    value: e, child: Text(e));
                              }).toList(),
                              onChanged: (value) {
                                selectedValue = value;
                              },
                            )),
                        NormalTextField(
                            validator: RequiredValidator(
                                errorText: 'This field is required'),
                            controller: locationController,
                            keyboardType: TextInputType.text,
                            label: 'Location',
                            hintText: 'Enter Location'),
                        NormalTextField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'This field is required'),
                              PatternValidator(r'^(?:[+0]9)?[0-9]{10}$',
                                  errorText: 'Enter a valid phone number')
                            ]),
                            controller: phoneController,
                            keyboardType: TextInputType.phone,
                            label: 'Phone',
                            hintText: 'Enter Phone Number'),
                        NormalTextField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'This field is required'),
                              PatternValidator(r'^(?:[+0]9)?[0-9]{10}$',
                                  errorText: 'Enter a valid phone number')
                            ]),
                            controller: secPhoneController,
                            keyboardType: TextInputType.phone,
                            label: 'Secendory Phone Number',
                            hintText: 'Enter Number of another person'),
                        NormalTextField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'This field is required'),
                              EmailValidator(errorText: 'Invalid email format')
                            ]),
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            label: 'Email',
                            hintText: 'Enter Email'),
                        BlocBuilder<PassBloc, PassState>(
                          builder: (context, state) {
                            return PassWordTextField(
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'This field is required'),
                                MinLengthValidator(6,
                                    errorText:
                                        'Password must be at least 6 characters long'),
                              ]),
                              controller: passController,
                              label: 'Password',
                              hintText: 'Enter Password',
                              obscureText: state.toggle2,
                              icons: Icon(state.toggle2
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined),
                              onPressed: () {
                                if (state.toggle2) {
                                  context
                                      .read<PassBloc>()
                                      .add(const PassEvent.pressed2());
                                } else if (!state.toggle2) {
                                  context
                                      .read<PassBloc>()
                                      .add(const PassEvent.unpressed());
                                }
                              },
                            );
                          },
                        ),
                        BlocBuilder<PassBloc, PassState>(
                          builder: (context, state) {
                            return PassWordTextField(
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'This field is required'),
                              ]),
                              controller: cPassController,
                              label: 'Confirm Password',
                              hintText: 'Enter Password Again',
                              obscureText: state.toggle3,
                              icons: Icon(state.toggle3
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined),
                              onPressed: () {
                                if (state.toggle3) {
                                  context
                                      .read<PassBloc>()
                                      .add(const PassEvent.pressed3());
                                } else if (!state.toggle3) {
                                  context
                                      .read<PassBloc>()
                                      .add(const PassEvent.unpressed());
                                }
                              },
                            );
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              'By pressing here you also accept our',
                              style: GoogleFonts.roboto(),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const TermsAndConditionPage());
                              },
                              child: Text('Terms & Conditions',
                                  style: GoogleFonts.roboto(color: kDarkRed)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              if (passController.text.trim() !=
                                  cPassController.text.trim()) {
                                Get.showSnackbar(GetSnackBar(
                                  messageText: Center(
                                    child: Text(
                                      'Password not match',
                                      style: GoogleFonts.roboto(
                                          color: kWhite,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                  maxWidth: 200,
                                  borderRadius: 25,
                                  backgroundColor: kDarkRed,
                                  snackPosition: SnackPosition.TOP,
                                  snackStyle: SnackStyle.FLOATING,
                                  boxShadows: const [
                                    BoxShadow(
                                        blurRadius: 50, color: Colors.black54)
                                  ],
                                  duration: const Duration(seconds: 2),
                                ));
                              } else {
                                if (_formkey.currentState!.validate()) {
                                  signin();
                                  Get.to(() => const SplashScreen());
                                } else {
                                  log('pass not match!!');
                                }
                              }
                            },
                            child: const ButtonUi(text: 'S I G N I N')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account.',
                                style: GoogleFonts.poppins(fontSize: 12)),
                            TextButton(
                                onPressed: () {
                                  Get.to(() => LoginPage());
                                },
                                child: Text(
                                  'Click here to LogIn',
                                  style: GoogleFonts.poppins(
                                      color: kRed, fontSize: 12),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> signin() async {
    final name = nameController.text.trim();
    final gender = selectedValue;
    final location = locationController.text.trim();
    final phon = phoneController.text.trim();
    final secPhone = secPhoneController.text.trim();
    final email = emailController.text.trim();
    final pass = passController.text.trim();

    final user = UserModel(
        name: name,
        gender: gender,
        location: location,
        phone: phon,
        secondaryPhone: secPhone,
        email: email,
        password: pass);
    UserController().signInUser(email: email, password: pass, user: user);
  }
}
