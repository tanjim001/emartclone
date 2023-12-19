import 'package:emart/screens/catagori_screen/catagories_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_widget/bg_widget.dart';
import '../../consts/colors.dart';
import '../../consts/list.dart';
import '../../consts/strings.dart';
import '../../consts/styles.dart';

class CatagoriScreen extends StatelessWidget {
  const CatagoriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            itemCount: 9,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoryimglist[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  catagorieslist[index]
                      .text
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .fontFamily(semibold)
                      .make()
                ],
              )
                  .box
                  .white
                  .roundedSM
                  .margin(const EdgeInsets.symmetric(horizontal: 4))
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(
                () {
                  Get.to(
                    () => Catagoriesdetails(title: catagorieslist[index]),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
