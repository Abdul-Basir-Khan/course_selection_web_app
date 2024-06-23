import 'package:flutter/material.dart';

import '../themes/app_colors.dart';


class CustomButton extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  const CustomButton({Key? key, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: onTap,
      child:
      Container(
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:AppColors.primaryColor,),
        child: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color:AppColors.primaryWhite),
        ),
      ),
    );
  }
}
