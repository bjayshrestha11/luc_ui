import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../luc_ui.dart';

class LucDialogOption {
  final String title;
  final String description;
  final String buttonTxt;
  final String lottiePath;
  final Color color;

  LucDialogOption({
    this.title = "",
    this.description = "",
    this.buttonTxt = "",
    this.color = Colors.white,
    this.lottiePath = '',
  });
}

class LucDialog extends StatelessWidget {
  const LucDialog({super.key, required this.options, required this.onBack});
  final LucDialogOption options;
  final VoidCallback onBack;

  LucDialog.error({
    super.key,
    required this.onBack,
    String errorText = "Error",
    String errorDescription = "Something went wrong",
    Color errorColor = Colors.red,
    String lottiePath = "assets/lottie/error.json",
    String buttonTxt = "Okay",
  }) : options = LucDialogOption(
          title: errorText,
          description: errorDescription,
          color: errorColor,
          lottiePath: lottiePath,
          buttonTxt: buttonTxt,
        );
  LucDialog.success({
    super.key,
    required this.onBack,
    String successText = "Success",
    String successDescription = "",
    Color successColor = Colors.green,
    String lottiePath = "assets/lottie/success.json",
    String buttonTxt = "Okay",
  }) : options = LucDialogOption(
          title: successText,
          description: successDescription,
          color: successColor,
          lottiePath: lottiePath,
          buttonTxt: buttonTxt,
        );
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kr3)),
      contentPadding: EdgeInsets.zero,
      elevation: 4,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 180.h,
            decoration: BoxDecoration(
              color: options.color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kr3),
                topRight: Radius.circular(kr3),
              ),
            ),
            child: Center(
              child: Lottie.asset(
                options.lottiePath,
                width: 60.w,
                height: 60.w,
              ),
            ),
          ),
          Container(
            height: 180.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kr3),
                bottomRight: Radius.circular(kr3),
              ),
            ),
            padding: EdgeInsets.all(khs4),
            child: Column(
              children: [
                kvsb3,
                LucText.subHeading(
                  options.title,
                  isSemiBold: true,
                ),
                LucText(
                  options.description,
                ),
                kvsb3,
                LucPrimaryBtn(
                  text: options.buttonTxt,
                  isOutlined: true,
                  height: kvs11,
                  margin: EdgeInsets.symmetric(horizontal: khs7),
                  onPressed: onBack,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
