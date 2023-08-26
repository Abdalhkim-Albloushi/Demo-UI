import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zamili_app/controller/home_controller.dart';
import 'package:zamili_app/view/home/home_view.dart';
import 'package:zamili_app/view/main/bottom_nav_bar.dart';
import 'package:zamili_app/view/main/main_app_bar.dart';
import 'package:zamili_app/view/orders/orders_view.dart';
import 'package:zamili_app/view/setting/selting_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      bottomNavigationBar: const HomeBottonBar(),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (data) {
          return <Widget>[
            const HomeView(),
            const OrdersView(),
            const SettingView(),
          ][data.index];
        },
      ),
    );
  }
}
