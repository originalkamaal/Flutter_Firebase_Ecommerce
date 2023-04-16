import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myfirst_app/consts/consts.dart';
import 'package:myfirst_app/widgets/common/applogo_widget.dart';
import 'package:myfirst_app/widgets/common/auth_bg_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return authBgWidget(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Login in to $appname".text.fontFamily(bold).size(18).white.make(),
            10.heightBox,
          ],
        ),
      ),
    ));
  }
}
