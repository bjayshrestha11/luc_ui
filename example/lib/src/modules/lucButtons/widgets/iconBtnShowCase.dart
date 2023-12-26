import 'package:flutter/material.dart';
import 'package:luc_ui/luc_ui.dart';

class IconBtnShowCase extends StatelessWidget {
  const IconBtnShowCase(
      {super.key,
      required this.icon,
      required this.isLoading,
      required this.isOutlined,
      required this.isDisabled});
  final IconData icon;
  final bool isLoading;
  final bool isOutlined;
  final bool isDisabled;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LucText("${khs6.toInt()}"),
            LucIconBtn(
              icon: icon,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isOutlined: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isTonal: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isTonal: true,
              isOutlined: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isFilled: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isDisabled: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isLoading: true,
              onPressed: () {},
            ),
          ],
        ),
        kvsb2,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LucText("${khs5.toInt()}"),
            LucIconBtn(
              icon: icon,
              onPressed: () {},
              isMedium: true,
            ),
            LucIconBtn(
              icon: icon,
              isOutlined: true,
              onPressed: () {},
              isMedium: true,
            ),
            LucIconBtn(
              icon: icon,
              isTonal: true,
              isMedium: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isTonal: true,
              isOutlined: true,
              onPressed: () {},
              isMedium: true,
            ),
            LucIconBtn(
              icon: icon,
              isFilled: true,
              isMedium: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isDisabled: true,
              isMedium: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isLoading: true,
              isMedium: true,
              onPressed: () {},
            ),
          ],
        ),
        kvsb2,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LucText("${khs4.toInt()}"),
            LucIconBtn(
              icon: icon,
              onPressed: () {},
              isSmall: true,
            ),
            LucIconBtn(
              icon: icon,
              isOutlined: true,
              onPressed: () {},
              isSmall: true,
            ),
            LucIconBtn(
              icon: icon,
              isTonal: true,
              isSmall: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isTonal: true,
              isOutlined: true,
              isSmall: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isFilled: true,
              isSmall: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isDisabled: true,
              isSmall: true,
              onPressed: () {},
            ),
            LucIconBtn(
              icon: icon,
              isLoading: true,
              isSmall: true,
              onPressed: () {},
            ),
          ],
        ),
        ...[].map((e) => Column(
              children: [
                kvsb2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LucText("${e.toInt()}"),
                    LucIconBtn(
                      icon: icon,
                      onPressed: () {},
                      size: e,
                    ),
                    LucIconBtn(
                      icon: icon,
                      isOutlined: true,
                      onPressed: () {},
                      size: e,
                    ),
                    LucIconBtn(
                      icon: icon,
                      isTonal: true,
                      size: e,
                      onPressed: () {},
                    ),
                    LucIconBtn(
                      icon: icon,
                      isTonal: true,
                      isOutlined: true,
                      size: e,
                      onPressed: () {},
                    ),
                    LucIconBtn(
                      icon: icon,
                      isFilled: true,
                      size: e,
                      onPressed: () {},
                    ),
                    LucIconBtn(
                      icon: icon,
                      isDisabled: true,
                      size: e,
                      onPressed: () {},
                    ),
                    LucIconBtn(
                      icon: icon,
                      isLoading: true,
                      size: e,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            )),
      ],
    );
  }
}
