import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/home.dart';
import 'package:components/src/pages/input_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() {
  print('Paso por aquí!!!');
  return <String, WidgetBuilder>{
    '/': (BuildContext) => Home(),
    'alert': (BuildContext) => AlertPage(),
    'avatar': (BuildContext) => AvatarPage(),
    'card': (BuildContext) => CardPage(),
    'inputs': (BuildContext) => InputPage(),
  };
}
