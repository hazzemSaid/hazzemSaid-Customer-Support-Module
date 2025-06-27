import 'package:customersupportmodule/modules/chatservices/controller/charcontroller.dart';
import 'package:get/get.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController(), fenix: true);
  }
}
