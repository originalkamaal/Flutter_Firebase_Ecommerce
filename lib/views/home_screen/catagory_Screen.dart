import 'package:get/get.dart';
import 'package:myfirst_app/consts/consts.dart';
import 'package:myfirst_app/widgets/common/auth_bg_widget.dart';

class CatagoryScreen extends StatelessWidget {
  const CatagoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return authBgWidget(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: "Catagories".text.white.fontFamily(bold).make(),
        backgroundColor: Colors.transparent,
      ),
      body: GridView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 100),
          itemBuilder: (context, index) {
            return Column(
              children: List.generate(
                  6, (index) => Container().box.color(redColor).make()),
            ).box.white.roundedSM.size(200, 200).clip(Clip.antiAlias).make();
          }).paddingAll(12),
    ));
  }
}
