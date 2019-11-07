import 'package:flutter/material.dart';
import 'package:flutter_widgets/home.dart';
import 'package:flutter_widgets/screens/absorb_pointer.dart';
import 'package:flutter_widgets/screens/alert_dialog.dart';
import 'package:flutter_widgets/screens/align.dart';
import 'package:flutter_widgets/screens/animated_builder.dart';
import 'package:flutter_widgets/screens/animated_container.dart';
import 'package:flutter_widgets/screens/animated_cross_fade.dart';
import 'package:flutter_widgets/screens/animated_default_text_style.dart';
import 'package:flutter_widgets/screens/animated_list.dart';
import 'package:flutter_widgets/screens/animated_modal_barrier.dart';
import 'package:flutter_widgets/screens/animated_opacity.dart';

void main() => runApp(FlutterWidgetsApp());

class FlutterWidgetsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/absorb_pointer': (context) => AbsorbPointerScreen(),
        '/alert_dialog': (context) => AlertDialogScreen(),
        '/align': (context) => AlignScreen(),
        '/animated_builder': (context) => AnimatedBuilderScreen(),
        '/animated_container': (context) => AnimatedContainerScreen(),
        '/animated_cross_fade': (context) => AnimatedCrossFadeScreen(),
        '/animated_default_text_style': (context) => AnimatedDefaultTextStyleScreen(),
        '/animated_list': (context) => AnimatedListScreen(),
        '/animated_modal_barrier': (context) => AnimatedModalBarrierScreen(),
        '/animated_opacity': (context) => AnimatedOpacityScreen(),

        '/slider': (context) => AlignScreen(),
      },
    );
  }
}