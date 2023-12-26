import 'package:flutter/material.dart';
import 'package:luc_ui/luc_ui.dart';

import '../lucButtons/lucButtonsView.dart';
import '../lucSpace/lucSpaceView.dart';
import '../lucText/lucTextView.dart';

const List<Map<String, dynamic>> _showcases = [
  {"name": "Space", "view": LucSpaceView()},
  {"name": "Text", "view": LucTextView()},
  {"name": "Buttons", "view": LucButtonsView()},
];

class HomeView extends StatefulWidget {
  const HomeView(
      {super.key, required this.changeTheme, required this.darkMode});
  final bool darkMode;
  final VoidCallback changeTheme;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _showcases.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Luc UI"),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              ..._showcases
                  .map(
                    (e) => Tab(
                      text: e["name"],
                    ),
                  )
                  .toList()
            ],
          ),
          actions: [
            LucIconBtn(
              icon: widget.darkMode ? Icons.light_mode : Icons.dark_mode,
              onPressed: widget.changeTheme,
            ),
          ],
        ),
        body: TabBarView(
          children: [..._showcases.map((e) => e["view"]).toList()],
        ),
      ),
    );
  }
}
