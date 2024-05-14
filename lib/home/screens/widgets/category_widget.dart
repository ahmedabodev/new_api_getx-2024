import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../const/const.dart';
import '../../controller/home_controller.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(builder: ( controller) {
      return SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ConstApp.categoryNames.length,
          itemBuilder: (BuildContext context, int index) {
            var item=ConstApp.categoryNames[index];
            return  InkWell(
              onTap: (){
                controller.changeCategory(index: index,value: item);
              },
              child: Card(
                color:(controller.indexCategory==index)?Colors.blue: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(item)),
                ),
              ),
            );
          },),
      );
    },);
  }
}
