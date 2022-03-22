import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:web_a/config/themes/app_colors.dart';
import 'package:web_a/config/themes/custom_font_styles.dart';
import 'package:web_a/features/home/controllers/exterior_controller.dart';
import 'package:web_a/features/home/views/widgets/custom_button.dart';
import 'package:web_a/utils/responsive.dart';

class FooterWebTab extends StatelessWidget {
  const FooterWebTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              child: Row(
            children: [
              SvgPicture.asset(
                "assets/svgs/kia_logo.svg",
                height: 15,
                width: 10,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(width: 10, height: 10),
              Text("In sync with you", style: kBodySts),
            ],
          )),
          Positioned(
            top: 35,
            left: 0,
            child: Row(
              children: [
                CustomButton(
                  onTap: () {},
                  child: SvgPicture.asset("assets/svgs/google_play.svg"),
                ),
                CustomButton(
                  onTap: () {},
                  child: SvgPicture.asset("assets/svgs/app_store.svg"),
                )
              ],
            ),
          ),
          Positioned(
            bottom: Responsive.isTab(context) ? -20 : 0,
            left: 0,
            right: Responsive.isTab(context) ? 0 : null,
            child: Text("@ 2022 Kia America, Inc", style: kBodySts),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 700),
                child: Text(
                  "The Telluride packs a long list of standard features, impressive handling and power, advanced technology, and the most interior passenger room in its segment",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: VisualTypes(),
          )
        ],
      ),
    );
  }
}

class FooterMobile extends StatelessWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      VisualTypes(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset("assets/svgs/kia_logo.svg",
              height: 15, width: 40, fit: BoxFit.fitWidth),
          SizedBox(width: 10),
          Text("In sync with you.", style: kBodySts)
        ]),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onTap: () {},
            child: SvgPicture.asset("assets/svgs/google_play.svg"),
          ),
          CustomButton(
            onTap: () {},
            child: SvgPicture.asset("assets/svgs/app_store.svg"),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Text(
          "The Telluride packs a long list of standard features, impressive handling and power, advanced technology, and the most interior passenger room in its segment",
          textAlign: TextAlign.center,
        ),
      ),
      Text(
        "@ 2022 Kia America, Inc",
        textAlign: TextAlign.center,
        style: kBodySts,
      ),
    ]);
  }
}

class VisualTypes extends StatelessWidget {
  VisualTypes({Key? key}) : super(key: key);

  final exteriorController = Get.put(ExteriorController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onTap: () => exteriorController.toggle(),
            child: Container(
              child: Text("Interior"),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: exteriorController.isExterior.value
                          ? BorderSide.none
                          : BorderSide(width: 1, color: Colors.white))),
            ),
          ),
          SizedBox(width: 5),
          CustomButton(
            onTap: () => exteriorController.toggle(),
            child: Container(
              child: Text("Exterior"),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: exteriorController.isExterior.value
                          ? BorderSide(width: 1, color: Colors.white)
                          : BorderSide.none)),
            ),
          ),
          SizedBox(width: 80),
          Container(
            width: 25,
            height: 25,
            padding: const EdgeInsets.all(2),
            child: Icon(Icons.check, size: 15),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.5),
                border: Border.all(color: Colors.white, width: 1)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              Icon(Icons.keyboard_arrow_up, size: 10),
              Icon(Icons.keyboard_arrow_down, size: 10),
            ]),
          ),
          IconButton(
              iconSize: 45,
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/svgs/color_plate.svg",
                width: 45,
                height: 45,
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}
