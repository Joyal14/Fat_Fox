import 'package:fatfox_app/pages/Login/otp_page.dart';
import 'package:fatfox_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/text_field_widget.dart';
import 'package:fatfox_app/widgets/custom_text.dart';
import 'package:fatfox_app/widgets/custom_button.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 250,
                ),
                fatfoximage(),
                const SizedBox(
                  height: 70,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      label: "Sign up",
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  hintText: "Enter Name",
                  inputType: TextInputType.name,
                  maxLength: 20,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextField(
                  hintText: "Enter mobile number",
                  maxLength: 10,
                  inputType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                  context: context,
                  label: "Register Now",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const OTPPage()),
                    );
                  },
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const CustomText(
                      label: "Already have an account ?",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    CustomText(
                      label: " Login",
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomText(
                  label: "Continue as guest",
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
