// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';


class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Test App Bar"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
