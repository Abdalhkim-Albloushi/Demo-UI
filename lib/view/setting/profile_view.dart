import 'package:flutter/material.dart';
import 'package:zamili_app/core/extension.dart';
import 'package:zamili_app/widget/colors_frave.dart';
import 'package:zamili_app/widget/custom_app_bar.dart';
import 'package:zamili_app/widget/custom_form_field.dart';
import 'package:zamili_app/widget/text_custom.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom('Profile'),
      body: SafeArea(
        child: Form(
          child: ListView(
            cacheExtent: 99999,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(myPadding),
            children: [
              const CustomText(
                text: 'Edit profile information',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              5.0.hSize,
              CustomText(
                text:
                    'you can change your profile. please make sure to inform correct information',
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w300,
                fontSize: 12,
                maxLine: 2,
              ),
              0.5.myDivider,

              const Hero(
                tag: 'abc',
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: MyColors.orangeColor,
                    size: 70,
                  ),
                ),
              ),

              const CustomInput(
                text: 'Full name',
                keyboardType: TextInputType.name,
                hintText: 'example',
              ),
              myPadding.hSize,
              const CustomInput(
                text: 'Gender',
                keyboardType: TextInputType.name,
                hintText: 'example',
              ),
              myPadding.hSize,

              const CustomInput(
                text: 'Phone',
                keyboardType: TextInputType.phone,
                hintText: '9xxxxxxxx',
              ),
              myPadding.hSize,

              const CustomInput(
                text: 'Location',
                keyboardType: TextInputType.phone,
                hintText: 'Oman',
              ),
              myPadding.hSize,

              const CustomInput(
                text: 'Description',
                keyboardType: TextInputType.phone,
                maxLines: 3,
                hintText: 'notes...',
              ),
              myPadding.hSize,

              const CustomInput(
                text: 'Nationality',
                keyboardType: TextInputType.phone,
                hintText: 'Oman',
              ),

              (myPadding * 4).hSize,
              // GetBuilder<RegisterController>(
              //   init: RegisterController(),
              //   builder: (controller) {
              //     if (controller.loginLoding) {
              //       return const Center(
              //         child: CircularProgressIndicator(
              //           backgroundColor: MyColors.backgroundColor,
              //         ),
              //       );
              //     }
              //     return CustomBtn(
              //       text: 'إنشاء حساب',
              //       fontWeight: FontWeight.w500,
              //       onPressed: controller.onPressRegister,
              //     );
              //   },
              // ),
              (myPadding * 2).hSize,
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      elevation: 0,
      title: const CustomText(
        text: 'Profile',
        fontSize: 18,
        color: MyColors.backgroundColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
