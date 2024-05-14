import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../const/const.dart';
import '../../dio_helper/dio_helper.dart';
import '../../home/model/home_model.dart';

class SearchDataController extends GetxController{


  SearchDataController(){
    getData();
  }
  String search='cr7';
  HomeModel? searchModel;
  String isLoading='Loading';
  String error='';

  void getSearch(value){
  search=value;
    getData();
    update();
  }
  void getData()async{
    isLoading='Loading';

    try{

      var data=  await DioHelper.getData(
        query: {
          'apiKey':ConstApp.apiKey,
          'q':search,

        }, url: 'everything',


      );

      searchModel=HomeModel.forJson(data.data);
      isLoading='Complete';

      print(searchModel);
      update();
    }catch(e){

      if(e is DioError){
        print('ahmed${e.message.toString()}');
        error=e.message.toString();

      }else{print(e.toString());
      error=e.toString();

      }
      isLoading='Error';
      update();

    }

  }




}