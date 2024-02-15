import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.black,
  Color.fromRGBO(247, 233, 30, 1),
  Colors.white,
  Colors.green,
  Colors.red,
  Colors.blue
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0,
            'El color seleccionado no está disponible,el valor debe de ser mayor a 0'),
        assert(selectedColor < colorList.length,
            'El color seleccionado no está disponible,el valor debe de ser menor a ${colorList.length-1 }');

  ThemeData getTheme() => ThemeData(
      //return implicito
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor]);
}
