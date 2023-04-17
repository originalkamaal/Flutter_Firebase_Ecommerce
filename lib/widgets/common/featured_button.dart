import 'package:myfirst_app/consts/consts.dart';

Widget featuredButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 50,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  )
      .box
      .width(170)
      .margin(const EdgeInsets.symmetric(horizontal: 8))
      .white
      .roundedSM
      .padding(const EdgeInsets.all(4))
      .outerShadowSm
      .make();
}
