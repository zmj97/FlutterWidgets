import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/color_block.dart';
import 'package:flutter_widgets/widgets/screen_container.dart';

class CustomScrollViewScreen extends StatelessWidget {
  const CustomScrollViewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      title: 'CustomScrollView',
      body: ColorBlock(
        size: 300,
        hollow: true,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('CustomScrollView'),
                background: Image.network('http://wx1.sinaimg.cn/bmiddle/006CXrEjly1g537b4olshj30dc0hs0ty.jpg', fit: BoxFit.cover,),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 4
              ),
              delegate: SliverChildBuilderDelegate((context, idx) {
                return Container(
                  alignment: Alignment.center,
                  color: Theme.of(context).primaryColor.withOpacity(0.1 * (idx % 11)),
                  child: Text('item $idx'),
                );
              }, childCount: 50),
            )
          ],
        ),
      ),
    );
  }
}