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
      subTitle: "Contenedor estilizado",
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
      title: "SnackBars y Dialogos",
      subTitle: "Indicadores en pantalla",
      link: "/snackBar",
      icon: Icons.credit_card
  ),
  MenuItem(
      title: "Animated Container",
      subTitle: "Stateful widget animado",
      link: "/animated",
      icon: Icons.credit_card
  ),
  MenuItem(
      title: "UI Controls + Tiles",
      subTitle: "Una serie de controles de Flutter",
      link: "/uicontrol",
      icon: Icons.credit_card
  ),
  MenuItem(
      title: "Introducción a la aplicación",
      subTitle: "Pequeño tutorial introductorio",
      link: "/cards",
      icon: Icons.credit_card
  ),
  MenuItem(
      title: "InfiniteScroll y Pull",
      subTitle: "Listas infinitas y pull to refresh",
      link: "/infinitescroll",
      icon: Icons.credit_card
  ),
];
