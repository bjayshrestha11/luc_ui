import 'package:flutter/material.dart';
import 'package:luc_ui/luc_ui.dart';

class LucSpaceView extends StatefulWidget {
  const LucSpaceView({super.key});

  @override
  State<LucSpaceView> createState() => _LucSpaceViewState();
}

class _LucSpaceViewState extends State<LucSpaceView> {
  late int selectedSpacing;
  @override
  void initState() {
    selectedSpacing = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            kvsb4,
            LucSegmentedBtn(
              values: const [1, 2],
              selected: selectedSpacing,
              onSelectionChanged: (val) {
                setState(() {
                  selectedSpacing = val;
                });
              },
              labels: const ["Horizontal", "Vertical"],
            ),
            if (selectedSpacing == 1) ...[
              Container(
                height: context.height / 2,
                padding: EdgeInsets.all(khs3),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            ...[
                              khsb1,
                              khsb2,
                              khsb3,
                              khsb4,
                              khsb5,
                              khsb6,
                              khsb7,
                              khsb8,
                              khsb9,
                              khsb10,
                              khsb11,
                              khsb12,
                              khsb13,
                              khsb14
                            ]
                                .map((e) => Container(
                                      height: double.infinity,
                                      margin: EdgeInsets.only(right: khs1),
                                      color: context.isDark
                                          ? Colors.white
                                          : context.primaryColor,
                                      child: e,
                                    ))
                                .toList()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            if (selectedSpacing == 2) ...[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(khs3),
                child: Column(
                  children: [
                    ...[
                      kvsb1,
                      kvsb2,
                      kvsb3,
                      kvsb4,
                      kvsb5,
                      kvsb6,
                      kvsb7,
                      kvsb8,
                      kvsb9,
                      kvsb10,
                      kvsb11,
                      kvsb12,
                      kvsb13,
                      kvsb14
                    ]
                        .map((e) => IntrinsicHeight(
                              child: Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(bottom: khs1),
                                color: context.isDark
                                    ? Colors.white
                                    : context.primaryColor,
                                child: e,
                              ),
                            ))
                        .toList(),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
