

import 'package:flutter/material.dart';
import 'package:flutter_chatapp/common/pages/welcome/controller.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: Center(
     child: Text("This is the First Page")
     ),   
    );
  }
}