import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../home/screens/widgets/image_widget.dart';
import '../../controller/search_controller.dart';


class SearchDataWidget extends StatelessWidget {
  const SearchDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return           GetBuilder<SearchDataController>(builder: ( controller) {

      if(controller.isLoading=='Loading'){
        return  const Expanded(child: Center(child: CircularProgressIndicator()));
      } else if (controller.isLoading=='Error'){
        return Expanded(child: Center(child: Text(controller.error),));

      }else{
        return          Expanded(
          child: ListView.builder(
            itemCount: controller.searchModel!.articles.length,
            itemBuilder: (BuildContext context, int index) {
              var item=controller.searchModel!.articles[index];
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
