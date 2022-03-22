import 'package:get/get.dart';

class SliderController extends GetxController {
  var currentGroupIndex = 0.obs;
  final slideGroups = <SlideGroup>[
    SlideGroup(1, 8),
    SlideGroup(9, 14),
    SlideGroup(15, 22),
    SlideGroup(23, 26)
  ];
  var imagePath = "assets/images/1.png".obs;

  void changeSlidesForward() async {
    if (currentGroupIndex.value == slideGroups.length - 1) {
      currentGroupIndex.value = 0;
    } else {
      currentGroupIndex.value = currentGroupIndex.value + 1;
    }
    for (var i = slideGroups[currentGroupIndex.value].startImageIndex;
        i <= slideGroups[currentGroupIndex.value].endImageIndex;
        i++) {
      await Future.delayed(Duration(milliseconds: 100));
      print(i);
      imagePath.value = "assets/images/${i}.png";
    }
  }

  void changeSlidesBackward() async {
    if (currentGroupIndex.value == 0) {
      currentGroupIndex.value = slideGroups.length - 1;
    } else {
      currentGroupIndex.value = currentGroupIndex.value - 1;
    }
    for (var i = slideGroups[currentGroupIndex.value].endImageIndex;
        i > slideGroups[currentGroupIndex.value].startImageIndex;
        i--) {
      await Future.delayed(Duration(milliseconds: 100));
      print(i);
      imagePath.value = "assets/images/${i}.png";
    }
  }

  void setImagePath(int num) async {
    await Future.delayed(Duration(seconds: 1));
    print(num);
    imagePath.value = "assets/images/${num}.png";
  }
}

class SlideGroup {
  final int startImageIndex;
  final int endImageIndex;

  SlideGroup(this.startImageIndex, this.endImageIndex);
}
