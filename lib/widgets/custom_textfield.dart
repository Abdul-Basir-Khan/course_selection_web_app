import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../themes/app_text_styles.dart';



class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool isPassword;
  final bool? isFilled;
  final Color? isFilledColor;
  final Color? enableBorderColor;
  final Color? focusBorderColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    this.hintText,
    this.controller,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon, this.validator, this.isFilled, this.isFilledColor, this.enableBorderColor, this.focusBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child:

      TextFormField(
        controller: controller,

        obscureText: isPassword,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          filled: isFilled,
          fillColor: isFilledColor,
          hintStyle: AppTextStyles.regularStyle.copyWith(color: AppColors.textAf,fontSize: 14,),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide(color: enableBorderColor??AppColors.textAf)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: focusBorderColor??AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}