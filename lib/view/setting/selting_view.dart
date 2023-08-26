import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zamili_app/core/extension.dart';
import 'package:zamili_app/view/setting/add_servies_view.dart';
import 'package:zamili_app/view/setting/profile_view.dart';
import 'package:zamili_app/widget/colors_frave.dart';
import 'package:zamili_app/widget/text_custom.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 170,
        elevation: 2,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Hero(
              tag: 'abc',
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person,
                  color: MyColors.orangeColor,
                  size: 65,
                ),
              ),
            ),
            myPadding.hSize,
            TextButton(
              onPressed: () {
                Get.to(() => const ProfileView(),
                    transition: Transition.fadeIn,
                    duration: const Duration(milliseconds: 600));
              },
              child: const CustomText(
                text: 'Edit',
                color: MyColors.primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          myPadding.hSize,
          const _ItemsList(
            text: 'Favorite',
            iconData: Icons.favorite_border,
          ),
          const _ItemsList(
            text: 'Setting',
            iconData: Icons.settings_outlined,
          ),
          const _ItemsList(
            text: 'Languages',
            iconData: Icons.language,
          ),
          Divider(color: Colors.grey.shade300),
          _ItemsList(
            text: 'Add Services',
            iconData: Icons.edit_attributes_outlined,
            onTap: () {
              Get.to(() => const AddServesView(),
                  transition: Transition.downToUp,
                  duration: const Duration(milliseconds: 600));
            },
          ),
          const _ItemsList(
            text: 'Finance',
            iconData: Icons.edit_attributes_outlined,
          ),
          Divider(color: Colors.grey.shade300),
          const _ItemsList(
            text: 'About Us',
            iconData: Icons.send_outlined,
          ),
          const _ItemsList(
              text: 'Delete Account', iconData: Icons.info_outline),
        ],
      ),
    );
  }
}

class _ItemsList extends StatelessWidget {
  const _ItemsList({required this.iconData, required this.text, this.onTap});

  final IconData iconData;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: CustomText(
          text: text,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: MyColors.blackText,
        ),
        leading: Icon(
          iconData,
          color: MyColors.iconColor2,
        ),
        onTap: onTap);
  }
}
