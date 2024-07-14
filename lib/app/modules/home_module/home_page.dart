import 'package:animate_do/animate_do.dart';
import 'package:askapp/app/data/model/local/contentmodel.dart';

import 'package:askapp/app/utils/widgets/app_text_field/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:askapp/app/modules/home_module/home_controller.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: FadeInDown(duration: const Duration(milliseconds: 1050), child: Text("Bard"),),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: controller.data.length,
          itemBuilder: (context, index) => Content(controller.data[index]),
        ),
      ),
      bottomSheet: FadeInUpBig(duration: const Duration(milliseconds: 1200), child: Container(
        padding: EdgeInsets.all(2),
        height: Get.height / 8,
        width: double.infinity,
        child: Row(
         

          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  padding: const EdgeInsets.all(5),
                  child: TextFormField(

                    decoration: InputDecoration(
                      hintText: "type anything",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                      
                    ),
                    // maxLength: 1000,
                    maxLines: 500,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: ElevatedButton(
                    child: Text("Send"),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                    onPressed: () {},
                  ),
                ))
          ],
        ),
      ),)
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

class Content extends GetView<HomeController> {
  final ContentModel contentModel;
  const Content(this.contentModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        child: FadeInUp(
          animate: true,
          duration: Duration(milliseconds: contentModel.time!),
          child: Card(
            color: Colors.blueAccent[300],
            child: ListTile(
                title: Text(
                  "${contentModel.name}",
                ),
                subtitle: Text("${contentModel.content}")),
          ),
        ));
  }
}
