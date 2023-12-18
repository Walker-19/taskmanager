import 'package:flutter/material.dart';

const width = double.infinity;

EdgeInsets all(double v) => EdgeInsets.all(v);

EdgeInsets only({double t = 0, double b = 0, double r = 0, double l = 0}) =>
    EdgeInsets.only(top: t, bottom: b, right: r, left: l);

BorderRadius radiusAll(double v) => BorderRadius.all(Radius.circular(v));
BorderRadius radiusOnly(
        {double tr = 0, double tl = 0, double br = 0, double bl = 0}) =>
    BorderRadius.only(
        topRight: Radius.circular(tr),
        topLeft: Radius.circular(tl),
        bottomRight: Radius.circular(br),
        bottomLeft: Radius.circular(bl));

height(context) => MediaQuery.of(context).size.height;
