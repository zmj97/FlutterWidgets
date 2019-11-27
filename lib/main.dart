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
import 'package:flutter_widgets/screens/cupertino_navigation_bar.dart';
import 'package:flutter_widgets/screens/cupertino_picker.dart';
import 'package:flutter_widgets/screens/cupertino_popup_surface.dart';
import 'package:flutter_widgets/screens/cupertino_scrollbar.dart';
import 'package:flutter_widgets/screens/cupertino_segmented_control.dart';
import 'package:flutter_widgets/screens/cupertino_slider.dart';
import 'package:flutter_widgets/screens/cupertino_switch.dart';
import 'package:flutter_widgets/screens/cupertino_tab_scaffold.dart';
import 'package:flutter_widgets/screens/cupertino_text_field.dart';
import 'package:flutter_widgets/screens/cupertino_timer_picker.dart';
import 'package:flutter_widgets/screens/custom_multi_child_layout.dart';
import 'package:flutter_widgets/screens/custom_paint.dart';
import 'package:flutter_widgets/screens/custom_scroll_view.dart';
import 'package:flutter_widgets/screens/custom_single_child_layout.dart';
import 'package:flutter_widgets/screens/data_table.dart';
import 'package:flutter_widgets/screens/date_and_time_picker.dart';
import 'package:flutter_widgets/screens/decorated_box.dart';
import 'package:flutter_widgets/screens/decorated_box_transition.dart';
import 'package:flutter_widgets/screens/default_text_style.dart';
import 'package:flutter_widgets/screens/dismissible.dart';
import 'package:flutter_widgets/screens/divider.dart';
import 'package:flutter_widgets/screens/drag_target.dart';
import 'package:flutter_widgets/screens/draggable.dart';
import 'package:flutter_widgets/screens/drawer.dart';
import 'package:flutter_widgets/screens/dropdown_button.dart';
import 'package:flutter_widgets/screens/expanded.dart';
import 'package:flutter_widgets/screens/expansion_panel.dart';
import 'package:flutter_widgets/screens/fade_transition.dart';
import 'package:flutter_widgets/screens/fitted_box.dart';
import 'package:flutter_widgets/screens/floating_action_button.dart';

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
        '/cupertino_navigation_bar': (context) => CupertinoNavigationBarScreen(),
        '/cupertino_page_scaffold': (context) => CupertinoNavigationBarScreen(),

        '/cupertino_picker': (context) => CupertinoPickerScreen(),
        '/cupertino_popup_surface': (context) => CupertinoPopupSurfaceScreen(),
        '/cupertino_scrollbar': (context) => CupertinoScrollbarScreen(),
        '/cupertino_segmented_control': (context) => CupertinoSegmentedControlScreen(),
        '/cupertino_slider': (context) => CupertinoSliderScreen(),
        '/cupertino_switch': (context) => CupertinoSwitchScreen(),
        '/cupertino_tab_bar': (context) => CupertinoTabScaffoldScreen(),
        '/cupertino_tab_scaffold': (context) => CupertinoTabScaffoldScreen(),
        '/cupertino_tab_view': (context) => CupertinoTabScaffoldScreen(),
        '/cupertino_text_field': (context) => CupertinoTextFieldScreen(),
        '/cupertino_time_picker': (context) => CupertinoTimerPickerScreen(),
        '/custom_multi_child_layout': (context) => CustomMultiChildLayoutScreen(),
        '/custom_paint': (context) => CustomPaintScreen(),
        '/custom_scroll_view': (context) => CustomScrollViewScreen(),
        '/custom_single_child_layout': (context) => CustomSingleChildLayoutScreen(),
        '/data_table': (context) => DataTableScreen(),
        '/date_and_time_picker': (context) => DateAndTimePickerScreen(),
        '/decorated_box': (context) => DecoratedBoxScreen(),
        '/decorated_box_transition': (context) => DecoratedBoxTransitionScreen(),
        '/default_text_style': (context) => DefaultTextStyleScreen(),
        '/dismissible': (context) => DismissibleScreen(),
        '/divider': (context) => DividerScreen(),
        '/drag_target': (context) => DragTargetScreen(),
        '/draggable': (context) => DraggableScreen(),
        '/drawer': (context) => DrawerScreen(),
        '/dropdown_button': (context) => DropdownButtonScreen(),
        '/expanded': (context) => ExpandedScreen(),
        '/expansion_panel': (context) => ExpansionPanelScreen(),
        '/fade_transition': (context) => FadeTransitionScreen(),
        '/fitted_box': (context) => FittedBoxScreen(),
        '/flat_button': (context) => CardScreen(),
        '/floating_action_button': (context) => FloatingActionButtonScreen(),
        '/flutter_logo': (context) => AppBarScreen(),

        '/slider': (context) => AlignScreen(),

        '/snake_bar': (context) => DismissibleScreen(),

      },
    );
  }
}