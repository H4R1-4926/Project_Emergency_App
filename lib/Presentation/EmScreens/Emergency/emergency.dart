// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:emergency_app/Application/RadioButton/radio_bloc.dart';
import 'package:emergency_app/Application/lottie/lottie_bloc.dart';
import 'package:emergency_app/Core/colors.dart';
import 'package:emergency_app/Domain/Emergency/Model/emergency_model/emergency_model.dart';
import 'package:emergency_app/Infrastrucure/Emergency/emergency_repository.dart';
import 'package:emergency_app/Presentation/Home/home_page.dart';
import 'package:emergency_app/Presentation/Widgets/button.dart';
import 'package:emergency_app/Presentation/Widgets/radio_button.dart';
import 'package:emergency_app/Presentation/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class EmergencyHelp extends StatelessWidget {
  EmergencyHelp({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController extraController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? selectedValue;
  String? selectedLvlValue;

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
                    'assets/img/emergency_vector.jpg',
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
                maxLines: 4,
                maxLength: 200,
              ),
              LongTextField(
                controller: extraController,
                keyboardType: TextInputType.streetAddress,
                label: 'Extra(opt)',
                hintText: 'Extra details (optional)',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Level of emergency',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              BlocBuilder<RadioBloc, RadioState>(
                builder: (context, state) {
                  selectedLvlValue = state.lvlValue;
                  log(selectedLvlValue.toString());
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RadioButtonUi(
                        groupValue: state.lvlValue,
                        value: '1',
                        textData: '1',
                        onChanged: (value) {
                          context
                              .read<RadioBloc>()
                              .add(RadioEvent.radioButtonLvl(value: value!));
                        },
                      ),
                      RadioButtonUi(
                          groupValue: state.lvlValue,
                          onChanged: (value) {
                            context
                                .read<RadioBloc>()
                                .add(RadioEvent.radioButtonLvl(value: value!));
                          },
                          value: '2',
                          textData: '2'),
                      RadioButtonUi(
                          groupValue: state.lvlValue,
                          onChanged: (value) {
                            context
                                .read<RadioBloc>()
                                .add(RadioEvent.radioButtonLvl(value: value!));
                          },
                          value: '3',
                          textData: '3'),
                      RadioButtonUi(
                          groupValue: state.lvlValue,
                          onChanged: (value) {
                            context
                                .read<RadioBloc>()
                                .add(RadioEvent.radioButtonLvl(value: value!));
                          },
                          value: '4',
                          textData: '4'),
                      RadioButtonUi(
                          groupValue: state.lvlValue,
                          onChanged: (value) {
                            context
                                .read<RadioBloc>()
                                .add(RadioEvent.radioButtonLvl(value: value!));
                          },
                          value: '5',
                          textData: '5'),
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
    final name = nameController.text.trim();
    final phone = phoneController.text.trim();
    final loc = locationController.text.trim();
    final extra = extraController.text.trim();

    final emModel = EmergencyModel(
        name: name,
        phone: phone,
        location: loc,
        extra: extra,
        call: selectedValue ?? 'yes',
        level: selectedLvlValue ?? '3');
    EmergencyController().sndEmergencyDetails(emModel);
  }
}
