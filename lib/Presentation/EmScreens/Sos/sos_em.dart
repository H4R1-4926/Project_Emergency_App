// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:emergency_app/Application/RadioButton/radio_bloc.dart';
import 'package:emergency_app/Application/lottie/lottie_bloc.dart';
import 'package:emergency_app/Core/colors.dart';
import 'package:emergency_app/Domain/Sos/Model/sos_model/sos_model.dart';

import 'package:emergency_app/Infrastrucure/Sos/sos_repository.dart';
import 'package:emergency_app/Presentation/Home/home_page.dart';
import 'package:emergency_app/Presentation/Widgets/button.dart';
import 'package:emergency_app/Presentation/Widgets/radio_button.dart';
import 'package:emergency_app/Presentation/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SosEm extends StatelessWidget {
  SosEm({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController extraController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);
    return Scaffold(
        body: Center(
      child: Container(
        height: size.size.height / 1.1,
        width: size.size.width / 1.1,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              blurRadius: 25,
              spreadRadius: 1,
              color: kDarkRed,
              offset: Offset(8, 12))
        ], color: kWhite, borderRadius: BorderRadius.circular(15)),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              const CircleAvatar(
                radius: 60,
                child: Image(
                  image: AssetImage(
                    'assets/img/sos_vector.jpg',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Fill the details',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              NormalTextField(
                  validator:
                      RequiredValidator(errorText: 'This field is required'),
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  label: 'Name',
                  hintText: 'Enter Name'),
              NormalTextField(
                  validator:
                      RequiredValidator(errorText: 'This field is required'),
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  label: 'Phone',
                  hintText: 'Enter Phone'),
              LongTextField(
                validator:
                    RequiredValidator(errorText: 'This field is required'),
                controller: locationController,
                keyboardType: TextInputType.streetAddress,
                label: 'Locaton',
                hintText: 'Enter Location/Address',
                maxLength: 200,
                maxLines: 4,
              ),
              LongTextField(
                controller: extraController,
                keyboardType: TextInputType.streetAddress,
                label: 'Whats the emergency?',
                hintText: 'whats the emergency?',
                maxLines: 3,
                maxLength: 200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'is it ok to make a phone call?',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              BlocBuilder<RadioBloc, RadioState>(
                builder: (context, state) {
                  selectedValue = state.value;
                  log(selectedValue.toString());
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RadioButtonUi(
                        groupValue: state.value,
                        value: 'Yes',
                        textData: 'Yes',
                        onChanged: (value) {
                          context
                              .read<RadioBloc>()
                              .add(RadioEvent.radioButton(value: value!));
                        },
                      ),
                      RadioButtonUi(
                          groupValue: state.value,
                          onChanged: (value) {
                            context
                                .read<RadioBloc>()
                                .add(RadioEvent.radioButton(value: value!));
                          },
                          value: 'No',
                          textData: 'No')
                    ],
                  );
                },
              ),
              const Text(
                '(Make sure everything is correct)',
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      submit();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false);
                      context
                          .read<LottieBloc>()
                          .add(const LottieEvent.started());
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return BlocBuilder<LottieBloc, LottieState>(
                            builder: (context, state) {
                              if (state.isended) {
                                Navigator.pop(context);
                              }
                              return AlertDialog(
                                content: LottieBuilder.asset(
                                    'assets/lottie/check.json'),
                              );
                            },
                          );
                        },
                      );
                    }
                  },
                  child: const ButtonUi(text: 'S U B M I T')),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    ));
  }

  Future<void> submit() async {
    final name = nameController.text;
    final phone = phoneController.text;
    final loc = locationController.text;
    final extra = extraController.text;
    final sosModel = SosModel(
        name: name,
        phone: phone,
        location: loc,
        extra: extra,
        call: selectedValue ?? 'Yes');
    SosController().sndSosDetails(sosModel);
  }
}
