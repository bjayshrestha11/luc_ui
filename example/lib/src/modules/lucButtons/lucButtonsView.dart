import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:luc_ui/luc_ui.dart';

import 'widgets/iconBtnShowCase.dart';
import 'widgets/primaryBtnShowCase.dart';
import 'widgets/textBtnShowCase.dart';

class LucButtonsView extends StatefulWidget {
  const LucButtonsView({super.key});

  @override
  State<LucButtonsView> createState() => _LucButtonsViewState();
}

class _LucButtonsViewState extends State<LucButtonsView> {
  late bool isDisabled;
  late bool isOutlined;
  late bool isLoading;
  late bool showIcon;
  late bool isTonal;

  late int selectedBtn;

  @override
  void initState() {
    isDisabled = false;
    isOutlined = false;
    isLoading = false;
    showIcon = false;
    isTonal = false;
    selectedBtn = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(khs4),
        child: Column(
          children: [
            Center(
              child: LucSegmentedBtn(
                labels: const ["Primary", "Icon", "Text"],
                values: const [1, 2, 3],
                selected: selectedBtn,
                onSelectionChanged: (val) {
                  log(val.toString(), name: "SegmentedVal: ");
                  setState(() {
                    selectedBtn = val;
                  });
                },
              ),
            ),
            kvsb2,
            const Divider(),
            kvsb2,
            if (selectedBtn == 1) ...[
              _buildControls(context),
              PrimaryBtnShowCase(
                isDisabled: isDisabled,
                isLoading: isLoading,
                isOutlined: isOutlined,
                icon: showIcon ? Icons.settings_outlined : null,
              ),
            ],
            if (selectedBtn == 2) ...[
              LucText.heading("Icon Button"),
              kvsb4,
              IconBtnShowCase(
                icon: Icons.settings_outlined,
                isLoading: isLoading,
                isDisabled: isDisabled,
                isOutlined: isOutlined,
              ),
            ],
            if (selectedBtn == 3) ...[
              _buildControls(context),
              LucText.heading("Text Button"),
              kvsb2,
              TextBtnShowCase(
                isDisabled: isDisabled,
                isLoading: isLoading,
                isOutlined: isOutlined,
                isTonal: isTonal,
                showIcon: showIcon,
                icon: Icons.add_outlined,
              ),
            ],
          ],
        ),
      ),
    );
  }

  _buildControls(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            LucText("Disabled"),
            Checkbox(
              value: isDisabled,
              onChanged: (val) {
                setState(() {
                  isDisabled = val ?? false;
                });
              },
            ),
            LucText("Outlined"),
            Checkbox(
              value: isOutlined,
              onChanged: (val) {
                setState(() {
                  isOutlined = val ?? false;
                });
              },
            ),
            LucText("Loading"),
            Checkbox(
              value: isLoading,
              onChanged: (val) {
                setState(() {
                  isLoading = val ?? false;
                });
              },
            ),
          ],
        ),
        Row(
          children: [
            LucText("Icon"),
            Checkbox(
              value: showIcon,
              onChanged: (val) {
                setState(() {
                  showIcon = val ?? false;
                });
              },
            ),
            LucText("Tonal"),
            Checkbox(
              value: isTonal,
              onChanged: (val) {
                setState(() {
                  isTonal = val ?? false;
                });
              },
            ),
          ],
        ),
        const Divider(),
        kvsb2,
      ],
    );
  }
}
