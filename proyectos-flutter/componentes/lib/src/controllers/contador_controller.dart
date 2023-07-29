import 'package:get/get.dart';

class ContadorController extends GetxController {
  final RxInt _contador = 0.obs;

  //getters y setters

  int get contador => _contador.value;
  set contador(int value) => _contador.value = value;
  // set contador(int value) {
  //   _contador.value = value;
  // }
}
