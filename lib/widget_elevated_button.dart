import 'package:flutter/material.dart';

widgetButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.yellow,
      elevation: 20.0,
    ),
    child: Text(
      "OK",
    ),
    onPressed: () => exibirTexto('Pressionado'),
  );
}

void exibirTexto(String msg) {
  print(msg);
}
