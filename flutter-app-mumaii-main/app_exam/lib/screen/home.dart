// ignore: unused_import
import 'package:app_exam/widget/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:app_exam/colors.dart';

// ignore_for_file: must_be_immutable
class HomePagePage extends StatelessWidget {
  const HomePagePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColor.background,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 13),
                Container(
                  height: 1309,
                  width: 326,
                  margin: const EdgeInsets.symmetric(horizontal: 17),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      _buildHomePage(context),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 41,
                          width: 69,
                          margin: const EdgeInsets.only(top: 574),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 21,
                            vertical: 6,
                          ),
                          decoration: AppDecoration.fillDeepPurple.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPlus,
                            height: 28,
                            width: 26,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomePage(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 209,
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
        ),
        physics: const BouncingScrollPhysics(),
        itemCount: 12,
        itemBuilder: (context, index) {
          return HomepageItemWidget();
        },
      ),
    );
  }
}
