import 'package:flutter/material.dart';
import 'package:getxflutter/Home/NewPageSlider.dart';
import 'package:getxflutter/Home/homepage.dart';
import 'package:getxflutter/provider/Provider.dart';
import 'package:getxflutter/provider/slider_count.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*
    // Used for single provider
    return ChangeNotifierProvider(
      create: (_) => ProviderClass(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
     */

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => sliderCount()),
        ChangeNotifierProvider(create: (_) => ProviderClass())
      ],
      child: MaterialApp(
        home: NewPageSlider(),
      ),
    );
  }
}
