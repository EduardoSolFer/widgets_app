import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
//BOTONES
  MenuItem(
      title: "Botones",
      subTitle: "Varios botones en Flutter",
      link: "/buttons",
      icon: Icons.smart_button_outlined
  ),
//TARJETAS
  MenuItem(
      title: "Tarjetas",
      subTitle: "Contenedor estiliado",
      link: "/cards",
      icon: Icons.credit_card
  ),
//INDICADORES DE PROGRESO
  MenuItem(
      title: "Progress Indicator",
      subTitle: "Indicadores de progreso",
      link: "/progress",
      icon: Icons.refresh_sharp
  ),

  MenuItem(
      title: "Tarjetas",
      subTitle: "Contenedor estiliado",
      link: "/cards",
      icon: Icons.credit_card
  ),
  MenuItem(
      title: "Tarjetas",
      subTitle: "Contenedor estiliado",
      link: "/cards",
      icon: Icons.credit_card
  ),
  MenuItem(
      title: "Tarjetas",
      subTitle: "Contenedor estiliado",
      link: "/cards",
      icon: Icons.credit_card
  ),
  MenuItem(
      title: "Tarjetas",
      subTitle: "Contenedor estiliado",
      link: "/cards",
      icon: Icons.credit_card
  ),
];
