import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handel_api_getx/search/screen/widget/text_from_search.dart';

import '../../controller/search_controller.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchDataController>(builder: ( controller) {
      return TextFromCustom(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        onField: (value){
          controller.getSearch(value);
        },
      );
    },);
  }
}
