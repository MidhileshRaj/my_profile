import 'package:get/get.dart';

class AppbarNavigationController extends GetxController{

  RxInt selectedIndex = 99.obs;
  chaneIndex(int index){
    selectedIndex.value=index;

  }
}