import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zamili_app/core/extension.dart';
import 'package:zamili_app/widget/colors_frave.dart';
import 'package:zamili_app/widget/custom_app_bar.dart';
import 'package:zamili_app/widget/text_custom.dart';

const List<IconData> stadiumType = [
  FontAwesomeIcons.futbol,
  FontAwesomeIcons.tableTennisPaddleBall,
  FontAwesomeIcons.solidFutbol,
  FontAwesomeIcons.solidFutbol,
  FontAwesomeIcons.solidFutbol,
];

int index = -1;
int i = 2;

class AddServesView extends StatefulWidget {
  const AddServesView({super.key});

  @override
  State<AddServesView> createState() => _AddServesViewState();
}

class _AddServesViewState extends State<AddServesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom('Add Serves'),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: myPadding),
        physics: const BouncingScrollPhysics(),
        children: [
          (myPadding * 2).hSize,
          const CustomText(
            text: 'when you finish make sure you make correct data.',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          (myPadding * 2).hSize,
          const CustomText(
            text: 'Start add your serves now',
            textAlign: TextAlign.center,
            color: MyColors.primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
          (myPadding * 2).hSize,
          for (int i = 0; i < serviesTypeList.length; i++)
            GestureDetector(
              onTap: () {
                index = i;
                setState(() {});
              },
              child: TypeItemView(
                color:
                    index == i ? MyColors.primaryColor : Colors.grey.shade300,
                iconData: serviesTypeList[i].iconData,
                title: serviesTypeList[i].title,
                subTitle: serviesTypeList[i].subTitle,
              ),
            ),
          myPadding.hSize,
        ],
      ),
    );
  }
}

class TypeItemView extends StatelessWidget {
  const TypeItemView({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconData,
    required this.color,
  });
  final String title, subTitle;
  final String iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.only(bottom: myPadding),
      padding: const EdgeInsets.all(myPadding - 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: MyColors.primaryColor,
                  ),
                  padding: const EdgeInsets.all(1),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: MyColors.primaryColor,
                    backgroundImage: AssetImage('assets/$iconData'),
                  ),
                ),
                myPadding.wSize,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: title,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: subTitle,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: MyColors.iconColor,
                        maxLine: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: MyColors.primaryColor,
            size: 23,
          ),
        ],
      ),
    );
  }
}

final List<ServesItemModel> serviesTypeList = [
  ServesItemModel(
      title: 'Modeling',
      subTitle:
          'Modeling can be applied across various fields, including science',
      iconData: 'modeling.jpg',
      color: Colors.grey),
  ServesItemModel(
      title: 'Marketing',
      subTitle:
          'Marketing serves as a bridge between businesses and customers, encompassing strategies, communication, and activities to promote products or services,',
      iconData: 'marketing.jpg',
      color: Colors.grey),
  ServesItemModel(
      title: 'Graphic Designing',
      subTitle:
          'Graphic designing serves to visually communicate ideas, messages, and concepts through creative use of typography, imagery, and layout, enhancing visual.',
      iconData: 'graphic-d.jpg',
      color: Colors.grey),
  ServesItemModel(
      title: 'Videography',
      subTitle:
          'Videography serves to capture, create, and convey stories, messages, and events through dynamic visual storytelling using video.',
      iconData: 'videograp.jpg',
      color: Colors.grey),
  ServesItemModel(
      title: 'Media Management',
      subTitle:
          'Social media management serves to curate, create, schedule, and analyze content across platforms, fostering brand presence, engagement,',
      iconData: 's-m-m.jpg',
      color: Colors.grey),
  ServesItemModel(
      title: 'Others',
      subTitle:
          'Social media management serves to curate, create, schedule, and analyze content across platforms, fostering brand',
      iconData: 'other.jpg',
      color: Colors.grey)
];

class ServesItemModel {
  final String title, subTitle;
  final Color color;
  final String iconData;
  ServesItemModel({
    required this.title,
    required this.subTitle,
    required this.iconData,
    required this.color,
  });
}
