import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myfirst_app/consts/consts.dart';
import 'package:myfirst_app/widgets/common/applogo_widget.dart';
import 'package:myfirst_app/widgets/common/auth_bg_widget.dart';
import 'package:myfirst_app/widgets/inputs/filedButton.dart';
import 'package:myfirst_app/widgets/inputs/textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return authBgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Create Account".text.fontFamily(bold).size(18).white.make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint, title: name),
                customTextField(hint: emailhint, title: email),
                customTextField(hint: passwordhint, title: password),
                customTextField(hint: confirmPassHint, title: confirmPass),
                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                                fontFamily: regular, color: fontGrey)),
                        TextSpan(
                            text: termsAndCondition,
                            style: TextStyle(
                                fontFamily: regular, color: redColor)),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                                fontFamily: regular, color: fontGrey)),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                                fontFamily: regular, color: redColor)),
                      ])),
                    )
                  ],
                ),
                filledButton(
                        onPress: () {},
                        color: isChecked == true ? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyHaveAccount.text.color(fontGrey).make(),
                    login.text.color(redColor).make()
                  ],
                ).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .padding(const EdgeInsets.all(20))
                .roundedSM
                .width(context.screenWidth - 50)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
