import 'package:apibhagvatgita/model/verse_modal.dart';
import 'package:apibhagvatgita/utils/api_helper.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class VerseController extends GetxController{

  RxList<Versemodel> list=<Versemodel>[].obs;

  void versejsonparsing(int no) async {
    list.value=await Apihelper.helper.verseapi(no);
  }
}