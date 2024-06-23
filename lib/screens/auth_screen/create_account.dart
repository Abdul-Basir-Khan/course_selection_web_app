import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:course_selection_web_app/screens/all_list_models/app_pages_list.dart';
import 'package:course_selection_web_app/screens/auth_screen/topic_for_study/topic_to_study.dart';
import 'package:course_selection_web_app/themes/app_colors.dart';
import 'package:course_selection_web_app/themes/app_text_styles.dart';
import 'package:course_selection_web_app/widgets/custom_buttom.dart';
import 'package:course_selection_web_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/provider.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width*0.17,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [
                    Image.asset(
                        height: 25,width: 25,
                        color: AppColors.text6D,
                        "assets/icons/auth_screen/Vector.png"),
                    const SizedBox(height: 30,),
                    ...List.generate(homeIconList.length, (index)=>GestureDetector(
                      onTap: (){
                        setState(() {
                          _currentIndex=index;
                        });
                      },
                      child: Padding(
                        padding:const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          height: 25,width: 25,
                          color: _currentIndex==index?AppColors.primaryColor:AppColors.text6D,
                          homeIconList[index],),
                      ),
                    )),
                  ]
              ),
            ),

            _currentIndex==3?
            SizedBox(
              width: MediaQuery.sizeOf(context).width*0.60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  authScreenPages[navigationProvider.currentIndex]
                ],
              ),
            )
                :_currentIndex==2?
            TopicToStudy()
                :const SizedBox()


          ],
        ),
      ),
    );
  }
}


class IsCreateAccount extends StatefulWidget {
  const IsCreateAccount({super.key});

  @override
  State<IsCreateAccount> createState() => _IsCreateAccountState();
}

class _IsCreateAccountState extends State<IsCreateAccount> {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Create Account',
          style:AppTextStyles.boldStyle.copyWith(     fontSize: 36,),
        ),
        const SizedBox(height: 10,),
        Text(
          'Follow the instructions to make it easier to register.',
          textAlign: TextAlign.center,
          style: AppTextStyles.regularStyle.copyWith(
            color: AppColors.text3A,
            fontSize: 14,)
        ),
        const SizedBox(height: 55,),
        const CustomTextField(
          enableBorderColor: Color(0xFFF6F6F6),
          focusBorderColor: AppColors.primaryColor,
          prefixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage("assets/icons/auth_screen/uil_user.png"),),
          ),
          hintText: 'Username',
        ),
        const SizedBox(height: 30,),
        const CustomTextField(
          enableBorderColor: Color(0xFFF6F6F6),
          focusBorderColor: AppColors.primaryColor,
          prefixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage("assets/icons/auth_screen/mdi_email-outline.png"),),
          ),
          hintText: 'Email',
        ),
        const SizedBox(height: 30,),
        const CustomTextField(
          enableBorderColor: Color(0xFFF6F6F6),
          focusBorderColor: AppColors.primaryColor,
          prefixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage("assets/icons/auth_screen/mdi_password-outline.png"),),
          ),
          hintText: 'Password',
        ),
        const SizedBox(height: 80,),
        SizedBox(
            width: MediaQuery.sizeOf(context).width*0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(onTap: (){}, title: "Create Account"),
                const SizedBox(height: 20,),
            Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                     onTap: (){
                       setState(() {
                         navigationProvider.updateIndex(1);
                       });
                     },
                      child: const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Do you have account? ',
                              style: TextStyle(
                                color: Color(0xFF4B4B4B),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Log in',
                              style: TextStyle(
                                color: Color(0xFF1C6E41),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),





      ],
    );
  }
}


class IsLogIn extends StatefulWidget {
  const IsLogIn({super.key});

  @override
  State<IsLogIn> createState() => _IsLogInState();
}

class _IsLogInState extends State<IsLogIn> {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'Log In',
            style:AppTextStyles.boldStyle.copyWith(     fontSize: 36,),
          ),
        ),
        const SizedBox(height: 10,),
        Center(
          child: Text(
              'Enter to continue and explore within your grasp.',
              textAlign: TextAlign.center,
              style: AppTextStyles.regularStyle.copyWith(
                color: AppColors.text3A,
                fontSize: 14,)
          ),
        ),
        const SizedBox(height: 55,),
        Text(
          'Email Address',
          style:AppTextStyles.boldStyle.copyWith(    color: AppColors.text4B,
            fontSize: 20,)
        ),
        const SizedBox(height: 20,),
        const CustomTextField(
          enableBorderColor: Color(0xFFF6F6F6),
          focusBorderColor: AppColors.primaryColor,
          hintText: 'dimitridangeros@gmail.com',
        ),
        const SizedBox(height: 30,),
        Text(
            'Password',
            style:AppTextStyles.boldStyle.copyWith(    color: AppColors.text4B,
              fontSize: 20,)
        ),
        const SizedBox(height: 20,),
        const CustomTextField(
          enableBorderColor: Color(0xFFF6F6F6),
          focusBorderColor: AppColors.primaryColor,
         suffixIcon: Icon(Icons.visibility_off_outlined,color: AppColors.text4B,),
          hintText: 'Password',
        ),
        const SizedBox(height: 80,),
        Center(
          child: SizedBox(
              width: MediaQuery.sizeOf(context).width*0.50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(onTap: (){}, title: "Login to Continue"),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            navigationProvider.updateIndex(0);
                          });
                        },
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Don\'t have account? ',
                                style: TextStyle(
                                  color: Color(0xFF4B4B4B),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                  color: Color(0xFF1C6E41),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),





      ],
    );
  }
}
