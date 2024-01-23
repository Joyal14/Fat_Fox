import 'package:fatfox_app/pages/Login/registration_page.dart';
import 'package:fatfox_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fatfox_app/widgets/text_field_widget.dart';
import 'package:fatfox_app/widgets/custom_text.dart';
import 'package:fatfox_app/widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  height: 200,
                ),
                fatfoximage(),
                const SizedBox(
                  height: 70,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      label: "Login",
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  hintText: "Enter mobile number",
                  inputType: TextInputType.phone,
                  maxLength: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                  context: context,
                  label: "Login",
                  onPressed: () {},
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const CustomText(
                      label: "Don't have an account ?",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const RegistrationPage()),
                        );
                      },
                      child: CustomText(
                        label: " Register",
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                      label: "Powered By ",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    CustomText(
                      label: "FATFOX",
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
