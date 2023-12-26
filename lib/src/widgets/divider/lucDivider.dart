import 'package:flutter/material.dart';

import '../../../luc_ui.dart';

class LucDivider extends StatelessWidget {
  const LucDivider({super.key, this.text, this.color, this.padding});
  final String? text;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: color ?? context.primaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: khs2),
                child: LucText(
                  text!,
                  color: color,
                ),
              ),
              Expanded(
                child: Divider(
                  color: color ?? context.primaryColor,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Divider(
      color: color ?? context.primaryColor,
    );
  }
}
