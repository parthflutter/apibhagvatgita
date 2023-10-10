import 'package:apibhagvatgita/controller/verse_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerseScreen extends StatefulWidget {
  const VerseScreen({super.key});

  @override
  State<VerseScreen> createState() => _VerseScreenState();
}

class _VerseScreenState extends State<VerseScreen> {

  VerseController controller=Get.put(VerseController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var index=Get.arguments;
    controller.versejsonparsing(index);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Verse Screen"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Obx(
                ()=> ListView.builder(
                  itemCount: controller.list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Text("${controller.list[index].id}",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle:  Text("${controller.list[index].transliteration}",style: TextStyle(fontWeight: FontWeight.bold,),
                      ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
