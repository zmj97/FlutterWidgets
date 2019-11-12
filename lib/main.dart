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
import 'package:flutter_widgets/screens/animated_physical_model.dart';
import 'package:flutter_widgets/screens/animated_positioned.dart';
import 'package:flutter_widgets/screens/animated_size.dart';
import 'package:flutter_widgets/screens/app_bar.dart';
import 'package:flutter_widgets/screens/aspect_ratio.dart';
import 'package:flutter_widgets/screens/asset_bundle.dart';
import 'package:flutter_widgets/screens/backdrop_filter.dart';
import 'package:flutter_widgets/screens/baseline.dart';
import 'package:flutter_widgets/screens/bottom_navigation_bar.dart';
import 'package:flutter_widgets/screens/bottom_sheet.dart';
import 'package:flutter_widgets/screens/button_bar.dart';
import 'package:flutter_widgets/screens/card.dart';
import 'package:flutter_widgets/screens/center.dart';
import 'package:flutter_widgets/screens/checkbox.dart';
import 'package:flutter_widgets/screens/chip.dart';
import 'package:flutter_widgets/screens/circular_progress_indicator.dart';
import 'package:flutter_widgets/screens/clip_oval.dart';
import 'package:flutter_widgets/screens/clip_path.dart';
import 'package:flutter_widgets/screens/clip_rect.dart';
import 'package:flutter_widgets/screens/clip_r_rect.dart';
import 'package:flutter_widgets/screens/constrained_box.dart';
import 'package:flutter_widgets/screens/cupertino_action_sheet.dart';
import 'package:flutter_widgets/screens/cupertino_activity_indicator.dart';
import 'package:flutter_widgets/screens/cupertino_alert_dialog.dart';
import 'package:flutter_widgets/screens/cupertino_date_picker.dart';
import 'package:flutter_widgets/screens/cupertino_dialog.dart';
import 'package:flutter_widgets/screens/cupertino_fullscreen_dialog_transition.dart';

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
        '/animated_physical_model': (context) => AnimatedPhysicalModelScreen(),
        '/animated_positioned': (context) => AnimatedPositionedScreen(),
        '/animated_size': (context) => AnimatedSizeScreen(),

        '/app_bar': (context) => AppBarScreen(),
        '/aspect_ratio': (context) => AspectRatioScreen(),
        '/asset_bundle': (context) => AssetBundleScreen(),
        '/backdrop_filter': (context) => BackdropFilterScreen(),
        '/baseline': (context) => BaselineScreen(),
        '/bottom_navigation_bar': (context) => BotttomNavigationBarScreen(),
        '/bottom_sheet': (context) => BottomSheetScreen(),
        '/botton_bar': (context) => BottonBarScreen(),
        '/card': (context) => CardScreen(),
        '/center': (context) => CenterScreen(),
        '/checkbox': (context) => CheckboxScreen(),
        '/chip': (context) => ChipScreen(),
        '/circular_progress_indicator': (context) => CircularProgressIndicatorScreen(),
        '/clip_oval': (context) => ClipOvalScreen(),
        '/clip_path': (context) => ClipPathScreen(),
        '/clip_r_rect': (context) => ClipRRectScreen(),
        '/clip_rect': (context) => ClipRectScreen(),
        '/column': (context) => CardScreen(),
        '/constrained_box': (context) => ConstrainedBoxScreen(),
        '/container': (context) => CenterScreen(),
        '/cupertino_action_sheet': (context) => CupertinoActionSheetScreen(),
        '/cupertino_activity_indicator': (context) => CupertinoActivityIndicatorScreen(),
        '/cupertino_alert_dialog': (context) => CupertinoAlertDialogScreen(),
        '/cupertino_button': (context) => CupertinoAlertDialogScreen(),
        '/cupertino_date_picker': (context) => CupertinoDatePickerScreen(),
        '/cupertino_dialog': (context) => CupertinoDialogScreen(),
        '/cupertino_dialog_action': (context) => CupertinoAlertDialogScreen(),
        '/cupertino_fullscreen_dialog_transition': (context) => CupertinoFullscreenDialogTransitionScreen(),

        '/slider': (context) => AlignScreen(),
      },
    );
  }
}