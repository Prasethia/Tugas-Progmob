import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 39.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup75,
                height: 301.v,
                width: 311.h,
                margin: EdgeInsets.only(left: 6.h),
              ),
              SizedBox(height: 71.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Find Your  ",
                        style: theme.textTheme.displayMedium,
                      ),
                      TextSpan(
                        text: "Dream Job  Here!",
                        style:
                            CustomTextStyles.displayMediumOrangeA200.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Explore all the most exciting job roles based on your interest and study major.",
                  style: CustomTextStyles.bodyMediumPrimaryContainer,
                ),
              ),
              CustomIconButton(
                height: 60.adaptSize,
                width: 60.adaptSize,
                padding: EdgeInsets.all(15.h),
                alignment: Alignment.centerRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTitle(
          text: "Jobspot",
          margin: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 16.v,
          ),
        )
      ],
    );
  }
}
