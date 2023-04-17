import 'package:get/get.dart';
import 'package:myfirst_app/consts/consts.dart';
import 'package:myfirst_app/consts/data.dart';
import 'package:myfirst_app/widgets/common/home_buttons.dart';

import '../../widgets/common/featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: lightGrey,
        height: context.screenHeight,
        width: context.screenWidth,
        child: SafeArea(
            child: Column(
          children: [
            Container(
              color: lightGrey,
              alignment: Alignment.center,
              height: 60,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: searchPlaceholder,
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),

            //Swipper
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  10.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      itemCount: slides.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          slides[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .roundedSM
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                        2,
                        (index) => homeButtons(
                            heigh: context.screenHeight * 0.10,
                            width: context.screenWidth / 2.3,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            onPress: () {},
                            title: index == 0 ? "Today's Deal" : "Flash Sale")),
                  ),
                  10.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 20 / 10,
                      autoPlay: true,
                      height: 150,
                      itemCount: bannerslides.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          bannerslides[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .roundedSM
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                        3,
                        (index) => homeButtons(
                            heigh: context.screenHeight * 0.15,
                            width: context.screenWidth / 3.5,
                            icon: index == 0
                                ? icTopCategories
                                : index == 1
                                    ? icBrands
                                    : icTopSeller,
                            onPress: () {},
                            title: index == 0
                                ? "Top Catagories"
                                : index == 1
                                    ? "Top Brands"
                                    : "Top Sellers")),
                  ).paddingAll(12),
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: "Featured Catagories"
                        .text
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .size(18)
                        .make(),
                  ).paddingSymmetric(horizontal: 12),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  featuredButton(
                                      icon: featuredImages1[index],
                                      title: "Sample"),
                                  16.heightBox,
                                  featuredButton(
                                      icon: featuredImages2[index],
                                      title: "Sample")
                                ],
                              )).toList(),
                    ),
                  ).paddingSymmetric(horizontal: 8),
                  10.heightBox,
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: redColor),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Featured Products"
                              .text
                              .white
                              .fontFamily(bold)
                              .size(18)
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          10.heightBox,
                                          "Laptop 4GB/256GB"
                                              .text
                                              .fontFamily(semibold)
                                              .color(fontGrey)
                                              .make(),
                                          "\$600"
                                              .text
                                              .fontFamily(bold)
                                              .color(redColor)
                                              .size(16)
                                              .make()
                                        ],
                                      )
                                          .box
                                          .white
                                          .margin(const EdgeInsets.all(4))
                                          .roundedSM
                                          .make()),
                            ),
                          )
                        ]),
                  ),
                  20.heightBox,
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              mainAxisExtent: 300,
                              crossAxisSpacing: 8),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP5,
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            const Spacer(),
                            "Laptop 4GB/256GB"
                                .text
                                .fontFamily(semibold)
                                .color(fontGrey)
                                .make(),
                            10.heightBox,
                            "\$600"
                                .text
                                .fontFamily(bold)
                                .color(redColor)
                                .size(16)
                                .make(),
                            10.heightBox
                          ],
                        )
                            .box
                            .white
                            .roundedSM
                            .padding(EdgeInsets.symmetric(horizontal: 12))
                            .make();
                      }).paddingSymmetric(horizontal: 8)
                ]),
              ),
            )
          ],
        )),
      ),
    );
  }
}
