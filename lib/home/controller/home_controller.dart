import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:handel_api_getx/const/const.dart';
import 'package:handel_api_getx/dio_helper/dio_helper.dart';

import '../model/home_model.dart';

class HomeController extends GetxController{
  HomeController(){
    getData();
  }
  String country='us';
  String category='technology';
  int indexCategory=0;
  HomeModel? homeModel;
  String isLoading='Loading';
  String error='';
  void changeCategory({dynamic value,dynamic index}){
    category=value;
    indexCategory=index;
    getData();
    update();
  }
  void getData()async{


    try{

      var data=  await DioHelper.getData(
        query: {
          'apiKey':ConstApp.apiKey,

          'country':country,
          'category':category,
        }, url: 'top-headlines',


      );

      homeModel=HomeModel.forJson(data.data);
      isLoading='Complete';

      print(homeModel);
      update();
    }catch(e){

      if(e is DioError){
        print('ahmed${e.message.toString()}');
        error=e.message.toString();

      }else{

        // print(e.toString());
      error=e.toString();

      }
      isLoading='Error';
      update();

    }

  }

}