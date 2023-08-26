import 'package:get/get.dart';

class HomeController extends GetxController {
  int index = 0;

  void onPageChange(int i) {
    index = i;
    update();
  }
}
