import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:alumni/features/home/presentation/widgets/user_input_dropdown.dart';
import 'package:alumni/features/home/presentation/widgets/user_input_text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AthleteSignupScreen extends StatefulWidget {
  AthleteSignupScreen({super.key});

  @override
  State<AthleteSignupScreen> createState() => _AthleteSignupScreenState();
}

class _AthleteSignupScreenState extends State<AthleteSignupScreen> {
  final TextEditingController _fullNameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _mobileTextEditingController =
      TextEditingController();
  final TextEditingController _OTPTextEditingController =
      TextEditingController();
  final TextEditingController _currentAddressTextEditingController =
      TextEditingController();
  final TextEditingController _cityTextEditingController =
      TextEditingController();
  final TextEditingController _zipCodeTextEditingController =
      TextEditingController();

  final primarySport = ValueNotifier<String?>(null);
  final state = ValueNotifier<String?>(null);

  List<String> primarySportList = [
    "Cricket",
    "Football",
    "Hockey",
    "Badminton",
    "Tennis",
    "Basketball",
    "Volleyball",
    "Kabaddi",
    "Athletics",
    "Swimming",
    "Boxing",
    "Wrestling",
    "Table Tennis",
    "Chess",
    "Archery",
    "Shooting",
    "Cycling",
    "Gymnastics",
    "Golf",
    "Weightlifting",
    "Martial Arts",
    "Kho Kho",
    "Handball",
    "Carrom",
    "Other",
  ];

  List<String> stateList = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal",
    "Andaman and Nicobar Islands",
    "Chandigarh",
    "Dadra and Nagar Haveli and Daman and Diu",
    "Delhi",
    "Jammu and Kashmir",
    "Ladakh",
    "Lakshadweep",
    "Puducherry",
  ];

  @override
  void dispose() {
    super.dispose();
    _fullNameTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _mobileTextEditingController.dispose();
    _OTPTextEditingController.dispose();
    _currentAddressTextEditingController.dispose();
    _cityTextEditingController.dispose();
    _zipCodeTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text("ATHLETE REGISTER", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 18, fontWeight: FontWeight.bold),),
              Text("Create an account", style: TextStyle(fontWeight: FontWeight.bold),),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "Full Name"),
                              UserInputTextForm(
                                keyboardType: .name,
                                textEditingController:
                                    _fullNameTextEditingController,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "Email"),
                              UserInputTextForm(
                                keyboardType: .emailAddress,
                                textEditingController:
                                    _emailTextEditingController,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "Mobile"),
                              UserInputTextForm(
                                keyboardType: .number,
                                textEditingController:
                                    _mobileTextEditingController,
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 23,
                                    width:
                                        MediaQuery.of(context).size.width / 4.5,
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.secondary,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Send OTP",
                                        style: TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "OTP"),
                              UserInputTextForm(
                                keyboardType: .number,
                                textEditingController: _OTPTextEditingController,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "Primary Sports"),
                              UserInputDropdown(
                                valueListenable: primarySport,
                                itemList: primarySportList,
                                hint: Text("Primary Sports", style: TextStyle(color: Colors.grey.withValues(alpha: 0.8)),),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "Current Address"),
                              UserInputTextForm(
                                keyboardType: .streetAddress,
                                textEditingController:
                                    _currentAddressTextEditingController,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "City"),
                              UserInputTextForm(
                                keyboardType: .streetAddress,
                                textEditingController: _cityTextEditingController,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "States"),
                              UserInputDropdown(
                                valueListenable: state,
                                itemList: stateList,
                                hint: Text("States", style: TextStyle(color: Colors.grey.withValues(alpha: 0.8)),),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "Zip Code"),
                              UserInputTextForm(
                                keyboardType: .name,
                                textEditingController:
                                    _zipCodeTextEditingController,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        height: MediaQuery.of(context).size.height / 23,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            "Send OTP",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.surface,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: "Already have an account?",
                        children: [
                          TextSpan(
                              text: "Login here",
                            style: TextStyle(color: Theme.of(context).colorScheme.secondary, decoration: .underline, decorationColor: Theme.of(context).colorScheme.secondary),
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){},
                            mouseCursor: SystemMouseCursors.click
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
