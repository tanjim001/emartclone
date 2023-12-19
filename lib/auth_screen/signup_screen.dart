import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../common_widget/applogo.dart';
import '../common_widget/bg_widget.dart';
import '../common_widget/custombutton1.dart';
import '../common_widget/customtextfield.dart';
import '../consts/colors.dart';
import '../consts/strings.dart';
import '../consts/styles.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              logo(),
              15.heightBox,
              "Log in to $appname".text.fontFamily(bold).size(18).white.make(),
              Column(
                children: [
                  customTextFiled(hint: name, title: name),
                  customTextFiled(hint: emailhint, title: email),
                  customTextFiled(title: password, hint: passwordhint),
                  customTextFiled(title: retypepassword, hint: passwordhint),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: "Forgot Password?".text.make(),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: whiteColor,
                        activeColor: redColor,
                        value: isCheck,
                        onChanged: (newvalue) {
                          setState(() {
                            isCheck = newvalue;
                          });
                        },
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                ),
                              ),
                              TextSpan(
                                text: "&",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  5.heightBox,
                  cu1Button(
                    title: signup,
                    onpress: () {},
                    color: isCheck == true ? redColor : lightGrey,
                    textColor: whiteColor,
                  ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(color: fontGrey, fontFamily: bold),
                      ),
                      TextSpan(
                        text: login,
                        style: TextStyle(color: redColor, fontFamily: bold),
                      ),
                    ]),
                  ).onTap(() {
                    Get.back();
                  }),
                ],
              )
                  .box
                  .white
                  .rounded
                  .shadowSm
                  .width(context.screenWidth - 70)
                  .padding(const EdgeInsets.all(16))
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
