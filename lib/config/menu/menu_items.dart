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
  MenuItem(
      title: 'Contador de Clicks',
      subTitle: 'Contador',
      link: '/counter',
      icon: Icons.playlist_add),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicator',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbar y Dialagos',
      subTitle: 'Snackbars y dialogos',
      link: '/snackbar',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animación',
      subTitle: 'Animacion de container',
      link: '/animated',
      icon: Icons.check_box_sharp),
  MenuItem(
      title: 'UI-controls',
      subTitle: 'Controles de checkbox',
      link: '/ui-controls',
      icon: Icons.upcoming),
  MenuItem(
      title: 'Tutorial',
      subTitle: 'Tutorial',
      link: '/tutorial',
      icon: Icons.turned_in_not),
  MenuItem(
      title: 'Inifnite Scroll y Pull',
      subTitle: 'Inifnito',
      link: '/infinite',
      icon: Icons.list_alt_sharp),
  MenuItem(
      title: 'Theme Changer',
      subTitle: 'Selecciona el tema',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
