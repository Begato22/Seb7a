import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  var totalCounter = 0;
  RxString tasabih = "أستغفر الله".obs;
  bool finshed = false;

  increament() {
    if (!finshed) {
      counter.value++;
    } else {
      tasabih = 'أستغفر الله' as RxString;
      finshed = false;
    }
    if (counter.value == 33 && totalCounter == 0) {
      totalCounter += counter.value;
      counter.value = 0;
      tasabih.value = "الحمدلله";
    } else if (counter.value == 33 && totalCounter == 33) {
      totalCounter += counter.value;
      counter.value = 0;
      tasabih.value = "الله أكبر";
    } else if (counter.value == 33 && totalCounter == 66) {
      totalCounter += 0;
      counter.value = 0;
      tasabih.value = "لا إله إلا الله وحده لا شريك له ";
      finshed = true;
    }
  }
}
