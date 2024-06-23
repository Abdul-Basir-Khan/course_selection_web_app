import 'package:course_selection_web_app/screens/all_list_models/all_list_models.dart';
import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView
              (
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {

                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.primaryBlack,
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Our Products',
                      style: AppTextStyles.boldStyle.copyWith(
                        color: Colors.black,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
             Center(
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                 children: List.generate(storeTabData.length, (index)=>    GestureDetector(
                   onTap: (){
                     setState(() {
                       _currentIndex=index;

                     });
                   },
                   child: Container(
                     padding: EdgeInsets.all(5),
                     margin: EdgeInsets.only(right: 10),
                     decoration: ShapeDecoration(
                       color:_currentIndex==index? Color(0xFFD7FFEC):Colors.transparent,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(18),
                       ),
                     ),
                     child: Column(
                       crossAxisAlignment:
                       CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                       children: [

                         Image.asset(
                             height: 90,width: 90,
                             storeTabData[index].imagePath),
                         SizedBox(height: 10,),
                         Text(
                             storeTabData[index].title,
                             textAlign: TextAlign.center,
                             style:AppTextStyles.semiBoldStyle.copyWith(  color: Color(0xFF6D6D6D),
                               fontSize: 20,
                               fontWeight: FontWeight.w600,)
                         )
                       ],
                     ),
                   ),
                 )),
               ),
             ),
                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CFA ESG MOCK EXAMS',
                      style:AppTextStyles.semiBoldStyle.copyWith(  color: Color(0xFF222222),
                        fontSize: 32,)
                    ),
                   Spacer(),

                   Icon(Icons.arrow_back_ios,color: AppColors.primaryColor,),
                   SizedBox(width: 10,),
                   Icon(Icons.arrow_forward_ios,color: AppColors.primaryColor,),

                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(storeCourseData.length, (index)=> Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width*0.27,
                          margin: EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 23),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(backgroundImage: AssetImage(storeCourseData[index].imagePath),
                              radius: 30,),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    storeCourseData[index].title,
                                    style:AppTextStyles.semiBoldStyle.copyWith( color: Color(0xFF0B0B0B),
                                      fontSize: 24,)
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                      storeCourseData[index].subTitle,
                                  style: AppTextStyles.regularStyle.copyWith( color: Color(0xFF6D6D6D),
                                      fontSize: 16,)
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                      "\$${storeCourseData[index].trailing}",
                                    style:AppTextStyles.semiBoldStyle.copyWith(   color: Color(0xFF0B0B0B),
                                      fontSize: 24,)
                                  )

                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
                            Container(

                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.sizeOf(context).width*0.11,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF00703B),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Add to Cart',
                                        style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.white,
                                          fontSize: 16,)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.sizeOf(context).width*0.11,
                                    decoration: ShapeDecoration(
                                      color: Colors.transparent,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Buy Now',
                                        style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                                          fontSize: 16,)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ],
                        )

                      ],
                    )),
                  ),
                ),

                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'CFA ESG Investing Packages',
                        style:AppTextStyles.semiBoldStyle.copyWith(  color: Color(0xFF222222),
                          fontSize: 32,)
                    ),
                    Spacer(),

                    Icon(Icons.arrow_back_ios,color: AppColors.primaryColor,),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios,color: AppColors.primaryColor,),

                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(storeCourseData.length, (index)=> Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width*0.27,
                          margin: EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 23),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(backgroundImage: AssetImage(storeCourseData[index].imagePath),
                                radius: 30,),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                      storeCourseData[index].title,
                                      style:AppTextStyles.semiBoldStyle.copyWith( color: Color(0xFF0B0B0B),
                                        fontSize: 24,)
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                      storeCourseData[index].subTitle,
                                      style: AppTextStyles.regularStyle.copyWith( color: Color(0xFF6D6D6D),
                                        fontSize: 16,)
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                      "\$${storeCourseData[index].trailing}",
                                      style:AppTextStyles.semiBoldStyle.copyWith(   color: Color(0xFF0B0B0B),
                                        fontSize: 24,)
                                  )

                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
                          Container(

                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width*0.11,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF00703B),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                  ),
                                  child: Center(
                                    child: Text(
                                        'Add to Cart',
                                        style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.white,
                                          fontSize: 16,)
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width*0.11,
                                  decoration: ShapeDecoration(
                                    color: Colors.transparent,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                  ),
                                  child: Center(
                                    child: Text(
                                        'Buy Now',
                                        style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                                          fontSize: 16,)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                        )

                      ],
                    )),
                  ),
                ),

                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'CFA ESG SINGLE PRODUCTS',
                        style:AppTextStyles.semiBoldStyle.copyWith(  color: Color(0xFF222222),
                          fontSize: 32,)
                    ),
                    Spacer(),

                    Icon(Icons.arrow_back_ios,color: AppColors.primaryColor,),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios,color: AppColors.primaryColor,),

                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(storeCourseData.length, (index)=> Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width*0.27,
                          margin: EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 23),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(backgroundImage: AssetImage(storeCourseData[index].imagePath),
                                radius: 30,),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                      storeCourseData[index].title,
                                      style:AppTextStyles.semiBoldStyle.copyWith( color: Color(0xFF0B0B0B),
                                        fontSize: 24,)
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                      storeCourseData[index].subTitle,
                                      style: AppTextStyles.regularStyle.copyWith( color: Color(0xFF6D6D6D),
                                        fontSize: 16,)
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                      "\$${storeCourseData[index].trailing}",
                                      style:AppTextStyles.semiBoldStyle.copyWith(   color: Color(0xFF0B0B0B),
                                        fontSize: 24,)
                                  )

                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
                          Container(

                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width*0.11,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF00703B),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                  ),
                                  child: Center(
                                    child: Text(
                                        'Add to Cart',
                                        style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.white,
                                          fontSize: 16,)
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width*0.11,
                                  decoration: ShapeDecoration(
                                    color: Colors.transparent,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                  ),
                                  child: Center(
                                    child: Text(
                                        'Buy Now',
                                        style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                                          fontSize: 16,)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                        )

                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
