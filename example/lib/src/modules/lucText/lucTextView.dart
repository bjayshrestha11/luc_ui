import 'package:flutter/material.dart';
import 'package:luc_ui/luc_ui.dart';

class LucTextView extends StatefulWidget {
  const LucTextView({super.key});

  @override
  State<LucTextView> createState() => _LucTextViewState();
}

class _LucTextViewState extends State<LucTextView> {
  late bool isSemiBold;
  late bool isBold;
  late bool underlined;
  late bool isItalic;
  late bool isLineThrough;
  late bool isCenter;
  late bool isRight;
  late bool isJustify;
  Color? color;

  @override
  void initState() {
    isSemiBold = false;
    isBold = false;
    underlined = false;
    isItalic = false;
    isLineThrough = false;
    isCenter = false;
    isJustify = false;
    isRight = false;
    color = Colors.blue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const text =
        "In the quiet of the forest, the leaves rustled softly in the breeze, and the sunlight filtered through the canopy, creating a dappled pattern on the forest floor.";
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: khs4, vertical: kvs4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                LucText("Semi Bold"),
                Checkbox(
                  value: isSemiBold,
                  onChanged: (val) {
                    setState(() {
                      isSemiBold = val ?? false;
                    });
                  },
                ),
                LucText("Bold"),
                Checkbox(
                  value: isBold,
                  onChanged: (val) {
                    setState(() {
                      isBold = val ?? false;
                    });
                  },
                ),
                LucText("Underline"),
                Checkbox(
                  value: underlined,
                  onChanged: (val) {
                    setState(() {
                      underlined = val ?? false;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                LucText("Italic"),
                Checkbox(
                  value: isItalic,
                  onChanged: (val) {
                    setState(() {
                      isItalic = val ?? false;
                    });
                  },
                ),
                LucText("Line Through"),
                Checkbox(
                  value: isLineThrough,
                  onChanged: (val) {
                    setState(() {
                      isLineThrough = val ?? false;
                    });
                  },
                ),
                LucText("Color"),
                IconButton(
                  onPressed: () async {
                    color = await LucColorPicker.pickColor(
                        context: context, initialColor: Colors.blue);
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.colorize,
                    color: color,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                LucText("Justify"),
                Checkbox(
                  value: isJustify,
                  onChanged: (val) {
                    setState(() {
                      isJustify = val ?? false;
                    });
                  },
                ),
                LucText("Center"),
                Checkbox(
                  value: isCenter,
                  onChanged: (val) {
                    setState(() {
                      isCenter = val ?? false;
                    });
                  },
                ),
                LucText("Right"),
                Checkbox(
                  value: isRight,
                  onChanged: (val) {
                    setState(() {
                      isRight = val ?? false;
                    });
                  },
                ),
              ],
            ),
            const Divider(),
            LucText.heading("Heading"),
            const Divider(),
            LucText.heading(
              text,
              isSemiBold: isSemiBold,
              isBold: isBold,
              underlined: underlined,
              isItalic: isItalic,
              lineThrough: isLineThrough,
              color: color,
              isCenter: isCenter,
              isJustify: isJustify,
              isRight: isRight,
              maxLines: 1,
            ),
            kvsb3,
            LucText.heading("Sub Heading"),
            const Divider(),
            LucText.subHeading(
              text,
              isSemiBold: isSemiBold,
              isBold: isBold,
              underlined: underlined,
              isItalic: isItalic,
              lineThrough: isLineThrough,
              color: color,
              isCenter: isCenter,
              isJustify: isJustify,
              isRight: isRight,
              maxLines: 2,
            ),
            kvsb3,
            LucText.heading("Normal"),
            const Divider(),
            LucText(
              text,
              isSemiBold: isSemiBold,
              isBold: isBold,
              underlined: underlined,
              isItalic: isItalic,
              lineThrough: isLineThrough,
              color: color,
              isCenter: isCenter,
              isJustify: isJustify,
              isRight: isRight,
            ),
            kvsb3,
            LucText.heading("Body"),
            const Divider(),
            LucText.body(
              text,
              isSemiBold: isSemiBold,
              isBold: isBold,
              underlined: underlined,
              isItalic: isItalic,
              lineThrough: isLineThrough,
              color: color,
              isCenter: isCenter,
              isJustify: isJustify,
              isRight: isRight,
            ),
            kvsb3,
            LucText.heading("Small"),
            const Divider(),
            LucText.small(
              text,
              isSemiBold: isSemiBold,
              isBold: isBold,
              underlined: underlined,
              isItalic: isItalic,
              lineThrough: isLineThrough,
              color: color,
              isCenter: isCenter,
              isJustify: isJustify,
              isRight: isRight,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
