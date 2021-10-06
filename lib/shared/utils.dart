// ignore_for_file: unnecessary_this, unnecessary_null_comparison, prefer_adjacent_string_concatenation

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:intl/intl.dart';
class Utils{
   static void showBottomSheet(BuildContext context, {Widget? child}) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(26),
            child: child,
          );
        });
  }

  static SnackBar showLoadingSnackBar(
      {Duration duration = const Duration(seconds: 4)}) {
    return SnackBar(
      duration: duration,
      // ignore: prefer_const_literals_to_create_immutables
      content: Row(children: [const CircularProgressIndicator()]),
    );
  }

  static SnackBar showSnackbarText({
    String? text,
    Color? color,
    TextStyle? style
  }) {
    return SnackBar(
      backgroundColor: color,
      duration:const Duration(seconds: 2),
      content: Text(
        text!,
        style: style,
      ),
    );
  }

  static int getNumberOfTextLines(String text) {
    TextSpan span =  TextSpan(text: text);

    TextPainter textPainter = TextPainter(
      text: span,
    );
    List<LineMetrics> lines = textPainter.computeLineMetrics();
    return lines.length;
  }
   static String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return HtmlUnescape().convert(htmlText.replaceAll(exp, ''));
  }

  static showLoadingDialog(BuildContext context) {
    showDialog(
        context: context,
        // ignore: avoid_unnecessary_containers
        builder: (context) => Container(
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ));
  }

  // static String addressFormatter(Placemark placemark) {
  //   return '${placemark.name ?? ''} ${placemark.locality ?? ''}, ${placemark.subAdministrativeArea ?? ''}, ${placemark.administrativeArea ?? ''}, ${placemark.postalCode ?? ''}, ${placemark.country ?? ''}';
  // }
}

final formatCurrency = NumberFormat.simpleCurrency(
  locale: 'IDR',
  decimalDigits: 0,
);

String? parseImageUrl(String initialUrl) {
  if (initialUrl == null) {
    return null;
  }
  return "" + "/" + initialUrl;
}

String priceFormat(double price) {
  var atoms = formatCurrency.format(price).split("Rp");
  return "Rp " + atoms[1];
}

String format(double n) {
  return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 2);
}

extension CapExtension on String {
  String get inCaps => '${this[0].toUpperCase()}${this.substring(1)}';
  String get allInCaps => this.toUpperCase();
  String get capitalizeFirstofEach =>
      this.split(" ").map((str) => str.capitalize()).join(" ");
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }


}