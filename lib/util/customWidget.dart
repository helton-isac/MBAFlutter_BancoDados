import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildSvgIcon(String pathImage) => SvgPicture.asset(pathImage);

Widget divisorListMain() => Divider(
  height: 1,
  color: Colors.black54,
);