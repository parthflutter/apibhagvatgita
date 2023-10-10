import 'package:apibhagvatgita/model/home_model.dart';
import 'package:apibhagvatgita/utils/api_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {


  RxList<Homemodel> l1 = <Homemodel>[].obs;

  void gitajsonparsing() async {
    l1.value = await Apihelper.helper.getApi();
  }
}
