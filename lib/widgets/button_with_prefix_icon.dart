import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class ButtonWithPrefixIcon extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  final Widget   icon;
  const ButtonWithPrefixIcon({Key? key, required this.onTap, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 15),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 10,
              offset: Offset(4, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon ,
            const SizedBox(width: 25,),
            Text(
              title,
              style: AppTextStyles.regularStyle.copyWith(color:AppColors.primaryBlack,fontSize: 15),
            ),



          ],
        ),
      ),
    );
  }
}
