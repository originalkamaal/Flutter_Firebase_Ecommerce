import 'package:get/get.dart';
import 'package:myfirst_app/consts/consts.dart';
import 'package:myfirst_app/views/home_screen/home_bottom_container.dart';
import 'package:myfirst_app/widgets/common/applogo_widget.dart';
import 'package:myfirst_app/widgets/common/auth_bg_widget.dart';
import 'package:myfirst_app/widgets/inputs/filedButton.dart';
import 'package:myfirst_app/widgets/inputs/textfield.dart';

import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            "Login in to $appname".text.fontFamily(bold).size(18).white.make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: emailhint, title: email),
                customTextField(hint: passwordhint, title: password),
                Align(
                  child: TextButton(onPressed: () {}, child: Text(forgetPass)),
                  alignment: Alignment.centerRight,
                ),
                5.heightBox,
                filledButton(
                        onPress: () {
                          Get.to(() => const Home());
                        },
                        color: redColor,
                        title: login,
                        textColor: whiteColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                filledButton(
                        onPress: () {
                          Get.to(() => const SignUpScreen());
                        },
                        color: lightGolden,
                        title: signup,
                        textColor: redColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(
                          icGoogleLogo,
                          width: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(
                          icFacebookLogo,
                          width: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(
                          icTwitterLogo,
                          width: 30,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
                .box
                .white
                .padding(const EdgeInsets.all(20))
                .roundedSM
                .width(context.screenWidth - 50)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
