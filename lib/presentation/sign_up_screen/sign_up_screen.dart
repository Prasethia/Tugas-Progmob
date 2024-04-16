// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 28.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 12.v),
              Text(
                "Create an Account",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 12.v),
              Container(
                width: 285.h,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              SizedBox(height: 61.v),
              _buildFullname(context),
              SizedBox(height: 13.v),
              _buildEmail(context),
              SizedBox(height: 14.v),
              _buildPassword(context),
              SizedBox(height: 20.v),
              _buildRowrememberme(context),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                text: "Sign up".toUpperCase(),
                margin: EdgeInsets.only(
                  left: 26.h,
                  right: 27.h,
                ),
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              SizedBox(height: 15.v),
              CustomElevatedButton(
                text: "Sign up with Google".toUpperCase(),
                margin: EdgeInsets.only(
                  left: 27.h,
                  right: 28.h,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle2,
                    height: 20.v,
                    width: 15.h,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              SizedBox(height: 16.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "You don't have an account yet?  ",
                      style: theme.textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "Sign in",
                      style: CustomTextStyles.bodySmallOrange400.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullname(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Full name",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 10.v),
          CustomTextFormField(
            controller: fullNameController,
            hintText: "Brandone Louis ",
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Email",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(
              controller: emailController,
              hintText: "Brandonelouis@gmail.com ",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Password",
              style: CustomTextStyles.labelLargeOnErrorContainer,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 13.v, 22.h, 13.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 50.v,
              ),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowrememberme(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 3.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCheckboxButton(
            text: "Remember me",
            value: rememberMe,
            padding: EdgeInsets.symmetric(vertical: 3.v),
            onChange: (value) {
              rememberMe = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "Forgot Password ?",
              style: CustomTextStyles.bodySmallGray900,
            ),
          )
        ],
      ),
    );
  }
}
