import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_a/config/themes/app_colors.dart';
import 'package:web_a/config/themes/custom_font_styles.dart';

class HeaderWebTab extends StatelessWidget {
  const HeaderWebTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/svgs/kia_logo.svg"),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Explore", style: kBodyLBoldTs),
            Text("Packed with confidence", style: kBodySts)
          ],
        ),
        Text("Telluride 2021", style: kBodyLNormalTs),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("\$ 32, 190", style: kBodyLNormalTs),
            Text("Starting MSRP", style: kBodySts)
          ],
        ),
        IconButton(
            hoverColor: kHoverColor,
            onPressed: () {},
            icon: SvgPicture.asset("assets/svgs/user.svg")),
        IconButton(
            hoverColor: kHoverColor,
            onPressed: () {},
            icon: SvgPicture.asset("assets/svgs/navigation.svg"))
      ],
    );
  }
}

class MobileHeader extends StatelessWidget {
  const MobileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          SvgPicture.asset("assets/svgs/kia_logo.svg"),
          Spacer(),
          IconButton(
              hoverColor: kHoverColor,
              onPressed: () {},
              icon: SvgPicture.asset("assets/svgs/user.svg")),
          SizedBox(width: 20),
          IconButton(
              hoverColor: kHoverColor,
              onPressed: () {},
              icon: SvgPicture.asset("assets/svgs/navigation.svg"))
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Explore", style: kBodyLBoldTs),
                  Text("Packed with confidence", style: kBodySts)
                ],
              ),
              Text("Telluride 2021", style: kBodyLNormalTs),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\$ 32, 190", style: kBodyLNormalTs),
                  Text("Starting MSRP", style: kBodySts)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
