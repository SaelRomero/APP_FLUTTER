import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/animated_containter.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicacionRoutes() {
  return <String, WidgetBuilder>{
    '/':      (BuildContext context) => HomePage(),
    'alert':  (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card':   (BuildContext context) => CardPage(),
    'animatedContainer':   (BuildContext context) => AnimatedContainerPage()
  };
}
