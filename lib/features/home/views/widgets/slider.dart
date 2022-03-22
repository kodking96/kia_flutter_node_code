import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_a/config/themes/app_colors.dart';
import 'package:web_a/features/home/controllers/slider_controller.dart';

class VehicleSlider extends StatelessWidget {
  VehicleSlider({Key? key}) : super(key: key);

  final sliderController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Row(
            children: [
              IconButton(
                  hoverColor: kHoverColor,
                  onPressed: () => sliderController.changeSlidesForward(),
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                  )),
              Expanded(child: Image.asset(sliderController.imagePath.value)),
              IconButton(
                  hoverColor: kHoverColor,
                  onPressed: () => sliderController.changeSlidesForward(),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                  ))
            ],
          ),
        ));
  }
}
