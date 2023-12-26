import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../widgets/lucText.dart';

class LucColorPicker {
  static Future<Color> pickColor(
      {required BuildContext context, Color? initialColor}) async {
    Color? pickedColor;
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: LucText("Pick a color"),
            content: MaterialPicker(
              pickerColor: initialColor ?? Theme.of(context).primaryColor,
              onColorChanged: (newCol) {
                pickedColor = newCol;
                Navigator.of(context).pop();
              },
            ),
          );
        });
    return pickedColor ?? initialColor ?? Colors.red;
  }
}
