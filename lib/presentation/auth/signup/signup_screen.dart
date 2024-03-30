import 'package:flutter/material.dart';
import 'package:hause_sallare/config/themes/text_theme.dart';
import 'package:hause_sallare/utils/widget/custom_button.dart';
import 'package:hause_sallare/utils/widget/text_field_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //title
              const Text(
                "Welcome back! Glad to see you, Again!",
                style: CustomTextTheme.subTitle1,
              ),
              const SizedBox(height: 57),
              //input username
              const TextFieldWidget(
                hintText: "Username",
                // controller: TextEditingController(),
              ),

              //input first name

              const TextFieldWidget(
                hintText: "First Name",
                // controller: TextEditingController(),
              ),

              //input last name

              const TextFieldWidget(
                hintText: "Last Name",
                // controller: TextEditingController(),
              ),

              //input password

              const TextFieldWidget(
                hintText: "Password",
                // controller: TextEditingController(),
              ),

              //input confirm password
              const TextFieldWidget(
                hintText: "Confirm password",
                // controller: TextEditingController(),
              ),


              // sign up button
              CustomButton(
                onTap: (){},
                text: 'Sign Up',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
