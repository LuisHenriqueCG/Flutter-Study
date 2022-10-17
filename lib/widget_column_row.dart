import 'package:flutter/material.dart';
import 'package:flutter_aula_3/widget_elevated_button.dart';

widgetRowColumn() {
  return Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      widgetButton(),
      widgetButton(),
      widgetButton(),
    ],
  );
}
