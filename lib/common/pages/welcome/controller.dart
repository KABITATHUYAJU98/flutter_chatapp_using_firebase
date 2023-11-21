import 'package:flutter_chatapp/common/pages/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();

  WelcomeController();
  changePage(int index) async {
    state.index.value = index;
  }
}
