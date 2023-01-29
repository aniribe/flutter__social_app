import 'package:flutter/cupertino.dart';

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

Widget verticalSpace(double height) => SizedBox(height: height);
Widget horizontalSpace(double width) => SizedBox(width: width);
