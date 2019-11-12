import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/code_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class AssetBundleScreen extends StatelessWidget {
  const AssetBundleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      isHome: true,
      title: 'AssetBundle',
      body: CodeBlock(code:
'''
/*
 * 
 * 使用
 * DefaultAssetBundle.of(context).loadString
 * 读取静态资源
 * 
 */

@override
Widget build(BuildContext context) {
  return new FutureBuilder(
    future: DefaultAssetBundle.of(context).loadString('assets/a.txt'),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return Text(snapshot.data);
      }
      return new CircularProgressIndicator();
    }
  )
}
''',
      ),
    );
  }
}