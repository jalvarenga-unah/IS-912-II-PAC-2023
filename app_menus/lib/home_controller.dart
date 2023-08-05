import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final _currentIndex = 0.obs;

  @override
  void onInit() {
    currentIndex = GetStorage().read('currentIndex') ?? 0;

    super.onInit();
  }

  //getters y setters
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;
}
