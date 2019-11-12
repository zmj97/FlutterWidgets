import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/code_block.dart';
import 'package:recase/recase.dart';
import 'package:flutter/services.dart' show rootBundle;

class ScreenContainer extends StatelessWidget {
  final String title;
  final Widget body;
  final bool isHome;
  const ScreenContainer({Key key, this.title, this.body, this.isHome = false}) : super(key: key);

  Future<Widget> _getCodeWidget() async {
    ReCase rc = new ReCase(title);
    String filePath = 'lib/screens/${rc.snakeCase}.dart';
    String codeStr = await rootBundle.loadString(filePath);
    return CodeBlock(code: codeStr,);
  }

  _getBodyShow(BuildContext context) {
    if (isHome == true) {
      return body;
    }
    FutureBuilder<Widget> codeWidget = FutureBuilder<Widget>(
      future: _getCodeWidget(),
      builder: (BuildContext context, AsyncSnapshot<Widget> snapshot){
        if(snapshot.hasData)
          return snapshot.data;
        return Container(child: CircularProgressIndicator());
      }
    );
    return Column(
      children: <Widget>[
        body,
        Expanded(
          child: codeWidget,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white70),
      ),
      backgroundColor: Color.fromARGB(250, 250, 250, 250),
      body: Container(
        padding: EdgeInsets.all(10),
        child: _getBodyShow(context),
      ),
    );
  }
}