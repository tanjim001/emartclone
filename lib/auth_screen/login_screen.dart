import 'package:emart/auth_screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';
import '../common_widget/applogo.dart';
import '../common_widget/bg_widget.dart';
import '../common_widget/custombutton1.dart';
import '../common_widget/customtextfield.dart';
import '../consts/colors.dart';
import '../consts/consts.dart';
import '../consts/list.dart';
import '../home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
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
                customTextFiled(hint: emailhint, title: email),
                customTextFiled(title: password, hint: passwordhint),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetpass.text.make()),
                ),
                //login button.....
                cu1Button(
                  title: login,
                  color: redColor,
                  textColor: whiteColor,
                  onpress: () {
                    Get.to(() => const Home());
                  },
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewaccount.text.color(fontGrey).make(),
                5.heightBox,
                //sign up button.....
                cu1Button(
                    title: signup,
                    color: lightGolden,
                    textColor: redColor,
                    onpress: () {
                      Get.to(() => const Signup());
                    }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                loginwith.text.fontFamily(bold).color(fontGrey).make(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(
                          socialIconList[index],
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                )
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
    ));
  }
}
