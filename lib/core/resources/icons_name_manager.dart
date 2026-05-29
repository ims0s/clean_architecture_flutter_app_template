import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

abstract class IconsNameManager {
  static IconData getIcon(String iconName) {
    switch (iconName) {
      case 'bi-snow2':
        return BootstrapIcons.snow2;
      case 'fa-solid fa-truck':
        return FontAwesomeIcons.truck.data;
      case 'fa-solid fa-warehouse':
        return FontAwesomeIcons.warehouse.data;
      case 'fa-solid fa-clipboard-list':
        return FontAwesomeIcons.clipboardList.data;
      case 'fa-solid fa-wind':
        return FontAwesomeIcons.wind.data;
      case 'fa-solid fa-cube':
        return FontAwesomeIcons.cube.data;
      case 'bi-thermometer-snow':
        return BootstrapIcons.thermometer_snow;
      case 'bi-wind':
        return BootstrapIcons.wind;
      case 'fa-solid fa-van-shuttle':
        return FontAwesomeIcons.vanShuttle.data;
      case 'bi-car-front-fill':
        return BootstrapIcons.car_front_fill;
      default:
        return Icons.error; // Fallback icon
    }
  }
}
