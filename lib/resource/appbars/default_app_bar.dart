// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
   DefaultAppBar({ Key? key }): preferredSize = const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Test App Bar"),
    );
  }

  @override
    final Size preferredSize;
}