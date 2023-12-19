import 'package:emart/common_widget/custombutton1.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/consts/list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../consts/colors.dart';
import '../../consts/styles.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: lightGrey,
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: whiteColor,
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                        itemCount: 3,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        height: 350,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                    10.heightBox,
                    title!.text.size(18).semiBold.make(),
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$30.000"
                        .text
                        .color(redColor)
                        .fontFamily(bold)
                        .size(18)
                        .make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            seller.text.white.fontFamily(semibold).make(),
                            5.heightBox,
                            inhouse.text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                          ],
                        )),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ),
                        )
                      ],
                    )
                        .box
                        .height(60)
                        .padding(const EdgeInsets.symmetric(horizontal: 16))
                        .color(textfieldGrey)
                        .rounded
                        .make(),
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "color: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: List.generate(
                                  3,
                                  (index) => VxBox()
                                      .size(40, 40)
                                      .color(Vx.randomColor)
                                      .margin(const EdgeInsets.symmetric(
                                          horizontal: 4))
                                      .roundedFull
                                      .make()),
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "qty".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add)),
                                "0"
                                    .text
                                    .size(16)
                                    .color(darkFontGrey)
                                    .fontFamily(semibold)
                                    .make(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove)),
                                10.heightBox,
                                "(0 available)"
                                    .text
                                    .color(textfieldGrey)
                                    .make(),
                              ],
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Total: ".text.color(textfieldGrey).make(),
                            ),
                            "\$0.00"
                                .text
                                .color(redColor)
                                .size(16)
                                .fontFamily(bold)
                                .make(),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                      ],
                    ).box.white.shadowSm.rounded.make(),
                    10.heightBox,
                    "Description"
                        .text
                        .size(18)
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                    "This is dummy disciption".text.make(),
                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                        itemDetailbutton.length,
                        (index) => ListTile(
                          title: itemDetailbutton[index]
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ),
                    20.heightBox,
                    youmayalso.text
                        .size(18)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          4,
                          (index) => Column(
                            children: [
                              Image.asset(
                                imgP1,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              10.heightBox,
                              "laptop"
                                  .text
                                  .white
                                  .fontFamily(bold)
                                  .color(darkFontGrey)
                                  .make(),
                              "\$600".text.color(redColor).make()
                            ],
                          )
                              .box
                              .white
                              .roundedSM
                              .margin(const EdgeInsets.symmetric(horizontal: 5))
                              .padding(const EdgeInsets.all(8))
                              .make(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: cu1Button(
                color: redColor,
                onpress: () {},
                textColor: whiteColor,
                title: addtocart),
          )
        ],
      ),
    );
  }
}
