import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/home_controller.dart';
import 'image_widget.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return           GetBuilder<HomeController>(builder: ( controller) {

        if(controller.isLoading=='Loading'){
          return  const Expanded(child: Center(child: CircularProgressIndicator()));
        } else if (controller.isLoading=='Error'){
          return Expanded(child: Center(child: Text(controller.error),));

        }else{
          return          Expanded(
            child: ListView.builder(
              itemCount: controller.homeModel!.articles.length,
              itemBuilder: (BuildContext context, int index) {
                var item=controller.homeModel!.articles[index];
                return   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      final Uri url=Uri.parse(item.url.toString());
                      launchUrl(url,mode: LaunchMode.externalApplication);
                    },
                    child: Card(
                      elevation: 8,
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              child: ImageWidget(image: item.urlToImage.toString(),)),
                          Expanded(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item.title.toString()),
                          )),
                        ],
                      ),
                    ),
                  ),
                );
              },),
          );

        }

    },);
  }
}
