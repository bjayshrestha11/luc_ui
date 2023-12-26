import 'package:flutter/material.dart';
import 'package:luc_ui/luc_ui.dart';

class PrimaryBtnShowCase extends StatelessWidget {
  const PrimaryBtnShowCase({
    super.key,
    required this.isDisabled,
    required this.isLoading,
    required this.isOutlined,
    this.icon,
  });
  final bool isDisabled;
  final bool isLoading;
  final bool isOutlined;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LucText.heading("Primary Button"),
        kvsb4,
        LucPrimaryBtn(
          text: "Primary Button",
          onPressed: () {},
          isDisabled: isDisabled,
          isOutlined: isOutlined,
          isLoading: isLoading,
          icon: icon,
        ),
        kvsb2,
        Row(
          children: [
            Expanded(
              child: LucPrimaryBtn(
                text: "Primary Button",
                onPressed: () {},
                isDisabled: isDisabled,
                isOutlined: isOutlined,
                isLoading: isLoading,
                icon: icon,
              ),
            ),
            khsb2,
            Expanded(
              child: LucPrimaryBtn(
                text: "Primary Button",
                onPressed: () {},
                isDisabled: isDisabled,
                isOutlined: isOutlined,
                icon: icon,
                isLoading: isLoading,
              ),
            ),
          ],
        ),
        kvsb2,
        Row(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: LucPrimaryBtn(
                text: "Primary Button",
                onPressed: () {},
                isDisabled: isDisabled,
                isOutlined: isOutlined,
                icon: icon,
                isLoading: isLoading,
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
        kvsb2,
      ],
    );
  }
}
