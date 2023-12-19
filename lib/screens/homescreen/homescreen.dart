import 'package:emart/consts/colors.dart';
import 'package:emart/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/commonbutton.dart';
import '../../common_widget/featured_button.dart';
import '../../consts/consts.dart';
import '../../consts/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.width,
      height: context.height,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: whiteColor,
                  border: InputBorder.none,
                  hintText: searchanything,
                  suffixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    5.heightBox,
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: sliderlist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              sliderlist[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    )
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .padding(const EdgeInsets.symmetric(horizontal: 4))
                        .make(),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButton(
                              context.screenHeight * 0.13,
                              context.screenWidth / 2.5,
                              index == 0 ? todayDeal : flashsale,
                              index == 0 ? icTodaysDeal : icFlashDeal,
                              () {})),
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: secondSlider.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              secondSlider[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    )
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .padding(const EdgeInsets.symmetric(horizontal: 4))
                        .make(),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => homeButton(
                              context.screenHeight * 0.13,
                              context.screenWidth / 3.5,
                              index == 0
                                  ? topCategories
                                  : index == 1
                                      ? brand
                                      : topsellers,
                              index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              () {})),
                    ),
                    10.heightBox,
                    Align(
                      alignment: Alignment.topLeft,
                      child: featuredCategories.text
                          .color(darkFontGrey)
                          .size(22)
                          .fontFamily(semibold)
                          .make(),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featuredButton(
                                        title: featuredlist[index],
                                        icon: featuredimg1[index])
                                  ],
                                )).toList(),
                      ),
                    ),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Column(
                            children: [
                              featuredButton(
                                  title: featuredlist1[index],
                                  icon: featuredimg2[index])
                            ],
                          ),
                        ).toList(),
                      ),
                    ),
                    20.heightBox,
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: const BoxDecoration(color: redColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredproduc.text.white
                              .fontFamily(bold)
                              .size(22)
                              .make(),
                          20.heightBox,
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
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 5))
                                    .padding(const EdgeInsets.all(8))
                                    .make(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: secondSlider.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              secondSlider[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    )
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .padding(const EdgeInsets.symmetric(horizontal: 4))
                        .make(),
                    //all products section
                    20.heightBox,

                    GridView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                              .roundedSM // Add rounded corners
                              .clip(Clip.antiAlias)
                              .make();
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
