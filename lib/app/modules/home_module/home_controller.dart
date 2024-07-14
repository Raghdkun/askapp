import 'package:askapp/app/data/model/local/contentmodel.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:askapp/app/data/provider/home_provider.dart';

class HomeController extends GetxController {
  HomeController({this.provider});
  final HomeProvider? provider;

  ContentModel contentModel = ContentModel();

  AnimationController? animationController;
  TextEditingController form = TextEditingController( ); 

  List con = [
    {
      "name": "Project One",
      "content": "This Is Example 1",
      "time": 650,
    },
    {
      "name": "Project One",
      "content": "This Is Example 2",
      "time": 850,
    },
    {
      "name": "Project One",
      "content": "This Is Example 3",
      "time": 1050,
    }
  ];

  List<ContentModel> data = [];

  getList() {
    List newData = con;
    data.addAll(newData.map((e) => ContentModel.fromJson(e)));
    update();
  }

  

  @override
  void onInit() {
    getList();

    super.onInit();
  }
}
