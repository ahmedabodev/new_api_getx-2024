import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handel_api_getx/search/screen/widget/search_data.dart';
import 'package:handel_api_getx/search/screen/widget/search_widget.dart';

import '../controller/search_controller.dart';

class SearchView extends StatelessWidget {
   SearchView({super.key});
   final searchController= Get.put(SearchDataController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SearchWidget(),
            SizedBox(height: 10,),
            SearchDataWidget(),

          ],
        ),
      ),
    );
  }
}
