import 'package:myfirst_app/consts/consts.dart';

Widget filledButton({onPress, color, textColor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color, padding: const EdgeInsets.all(12)),
      onPressed: onPress,
      child: Text(
        title!,
        style: TextStyle(color: textColor, fontFamily: bold),
      ));
}
