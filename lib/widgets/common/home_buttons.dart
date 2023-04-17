import 'package:myfirst_app/consts/consts.dart';

Widget homeButtons({width, heigh, String? title, icon, onPress}) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 26,
        ),
        10.heightBox,
        title!.text.fontFamily(semibold).color(darkFontGrey).make()
      ],
    ),
  ).box.roundedSM.white.size(width, heigh).make();
}
