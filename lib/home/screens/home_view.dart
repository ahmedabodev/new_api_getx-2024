import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:handel_api_getx/const/const.dart';
import 'package:handel_api_getx/home/controller/home_controller.dart';
import 'package:handel_api_getx/home/screens/widgets/category_widget.dart';
import 'package:handel_api_getx/home/screens/widgets/data_widget.dart';
import 'package:handel_api_getx/home/screens/widgets/image_widget.dart';
import 'package:handel_api_getx/search/screen/search_view.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});
   final homeController =Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        leading: IconButton(onPressed: () {
          Get.to(()=>SearchView());
        }, icon: const Icon(Icons.search),),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          CategoryWidget(),
          SizedBox(height: 10,),
          DataWidget(),
        ],
      ),
    );
  }
}
