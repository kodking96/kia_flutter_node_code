import 'package:flutter/material.dart';
import 'package:web_a/features/home/views/widgets/footer.dart';
import 'package:web_a/features/home/views/widgets/header.dart';
import 'package:web_a/features/home/views/widgets/slider.dart';
import 'package:web_a/utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Responsive.getScreenPadding(context),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1300),
            child: Column(
              children: [
                Container(
                    child: Responsive.getResponsiveWidget(context,
                        mobile: MobileHeader(),
                        tab: HeaderWebTab(),
                        web: HeaderWebTab())),
                Expanded(
                  child: VehicleSlider(),
                ),
                Container(
                    child: Responsive.getResponsiveWidget(context,
                        mobile: FooterMobile(),
                        tab: FooterWebTab(),
                        web: FooterWebTab())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
