import 'package:flutter/material.dart';
import 'package:zamili_app/widget/custom_app_bar.dart';
import 'package:zamili_app/widget/text_custom.dart';

class ServerView extends StatelessWidget {
  const ServerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom('Serves'),
      body: ListView(
        children: [
          CustomText(text: 'text'),
          CustomText(text: 'text'),
          CustomText(text: 'text'),
          CustomText(text: 'text'),
          CustomText(text: 'text'),
          CustomText(text: 'text'),
        ],
      ),
    );
  }
}
