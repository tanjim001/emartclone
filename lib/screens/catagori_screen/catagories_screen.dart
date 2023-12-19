import 'package:emart/screens/catagori_screen/itemdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_widget/bg_widget.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../consts/styles.dart';

class Catagoriesdetails extends StatelessWidget {
  final String? title;
  const Catagoriesdetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                  6,
                  (index) => "Baby clothing"
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .size(120, 60)
                      .rounded
                      .make(),
                ),
              ),
            ),
            20.heightBox,
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 300,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          width: 200,
                          height: 200,
                          fit: BoxFit.fill,
                        ),
                        const Spacer(),
                        "laptop"
                            .text
                            .fontFamily(bold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make(),
                        10.heightBox,
                      ],
                    ),
                  )
                      .box
                      .white
                      .padding(EdgeInsets.only(left: 18))
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .outerShadowSm
                      .roundedSM // Add rounded corners
                      .clip(Clip.antiAlias)
                      .make()
                      .onTap(() {
                    Get.to(() => ItemDetails(
                          title: 'hello',
                        ));
                  });
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
