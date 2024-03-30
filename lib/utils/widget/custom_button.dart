import 'package:flutter/material.dart';
import 'package:hause_sallare/config/themes/colors.dart';
import 'package:hause_sallare/config/themes/text_theme.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: CustomColors.washedBlackColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(text,style: CustomTextTheme.button,),
        ),
      ),
    );
  }
}
