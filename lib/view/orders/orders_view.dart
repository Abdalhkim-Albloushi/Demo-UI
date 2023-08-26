import 'package:flutter/material.dart';
import 'package:zamili_app/widget/colors_frave.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 2,
          bottom: const TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            unselectedLabelColor: MyColors.blackText,
            labelColor: MyColors.primaryColor,
            indicatorWeight: 2,
            indicatorColor: MyColors.primaryColor,
            tabs: <Tab>[
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'In Progress',
              ),
              Tab(
                text: 'Completed',
              ),
              Tab(
                text: 'Rejected',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('no data')),
            Center(child: Text('no data')),
            Center(child: Text('no data')),
            Center(child: Text('no data')),
          ],
        ),
      ),
    );
  }
}
