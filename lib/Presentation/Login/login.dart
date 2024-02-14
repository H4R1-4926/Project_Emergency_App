import 'package:emergency_app/Application/Pass/pass_bloc.dart';
import 'package:emergency_app/Core/colors.dart';
import 'package:emergency_app/Infrastrucure/User/user_repository.dart';

import 'package:emergency_app/Presentation/SignIn/sign_in.dart';

import 'package:emergency_app/Presentation/Widgets/bg_widgets.dart';
import 'package:emergency_app/Presentation/Widgets/textfield.dart';
import 'package:emergency_app/Presentation/Widgets/button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
                top: Radius.elliptical(size.size.width, 200)),
          ),
          BgDesign1(
              size: size,
              margin: EdgeInsets.only(bottom: size.size.height / 1.5),
              borerRdaius: BorderRadius.vertical(
                  bottom: Radius.elliptical(size.size.width, 200))),
          Center(
            child: Container(
              height: size.size.height / 2,
              width: size.size.width / 1.2,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(15)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/img/logo_trans.png'),
                        ),
                        NormalTextField(
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: 'This field is required'),
                            EmailValidator(errorText: 'Invalid email format')
                          ]),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          label: 'Email',
                          hintText: 'Enter Email',
                        ),
                        BlocBuilder<PassBloc, PassState>(
                          builder: (context, state) {
                            return PassWordTextField(
                                validator: MultiValidator([
                                  RequiredValidator(
                                      errorText: 'This field is required'),
                                ]),
                                controller: passController,
                                label: 'Password',
                                hintText: 'Enter Password',
                                obscureText: state.toggle,
                                icons: Icon(state.toggle
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined),
                                onPressed: () {
                                  if (state.toggle) {
                                    context
                                        .read<PassBloc>()
                                        .add(const PassEvent.pressed());
                                  } else if (!state.toggle) {
                                    context
                                        .read<PassBloc>()
                                        .add(const PassEvent.unpressed());
                                  }
                                });
                          },
                        ),
                        InkWell(
                          onTap: () {
                            if (_formkey.currentState!.validate()) {
                              logIn();
                            }
                          },
                          child: const ButtonUi(
                            text: 'L O G I N',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\'t have an account.',
                                style: GoogleFonts.poppins(fontSize: 12)),
                            TextButton(
                                onPressed: () {
                                  Get.to(() => SignInPage());
                                },
                                child: Text(
                                  'Click here to SignIn',
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

  Future<void> logIn() async {
    final email = emailController.text.trim();
    final password = passController.text.trim();
    await UserController().loginInUser(
      email: email,
      password: password,
    );
  }
}
