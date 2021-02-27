import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildSvgIcon(String pathImage) => SvgPicture.asset(
  pathImage,
  width: 48,
  height: 48
);

Widget divisorListMain() => Divider(
  height: 1,
  color: Colors.black54,
);