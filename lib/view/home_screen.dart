import 'package:apibhagvatgita/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller= Get.put(HomeController());
  @override
  void initState() {
    super.initState();
    controller.gitajsonparsing();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bhagvat Gita"),
          centerTitle: true,
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: controller.l1.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Get.toNamed('/second', arguments:controller.l1[index].chapterNumber );
                  },
                  leading: Text("${controller.l1[index].slug}",style: TextStyle(fontWeight: FontWeight.bold)),
                  // title: Text("${HomeController.controller.l1[index].}",style: TextStyle(color: Colors.red)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
