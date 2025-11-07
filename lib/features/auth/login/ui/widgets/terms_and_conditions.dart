import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/colors_manager.dart';
import '../../../../../core/themes/font_styles_manager.dart'; 
 
 class TermsAndConditions extends StatelessWidget {
   const TermsAndConditions({super.key});
 
   @override
   Widget build(BuildContext context) {
     return  Padding(
       padding:  EdgeInsets.symmetric(horizontal: 10.w,),
      
       child: Column(
         children: [
           RichText(
             text: TextSpan(
               text: 'By logging in, you agree to our ',
               style: FontStylesManager.font11Regular.copyWith(
                 color: ColorsManager.primaryGreyColor,
               ),
               children: [
                 TextSpan(
                   text: 'Terms and Conditions',
                   style: FontStylesManager.font11Regular.copyWith(
                     color: ColorsManager.darkBlueColor,
                   ),
                 ),
                 TextSpan(
                   text: ' and ',
                   style: FontStylesManager.font11Regular.copyWith(
                     color: ColorsManager.primaryGreyColor,
                     height: 1.5,
                   ),
                 ),
                
               ],
             ),
           ),
            Center(
             child: Text('Privacy Policy.',
                style: FontStylesManager.font11Regular.copyWith(
                  color: ColorsManager.darkBlueColor)),
           ) 
         ],
       )
     );
   
   }
 }
