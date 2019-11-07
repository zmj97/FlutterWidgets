import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:flutter/services.dart' show rootBundle;

class ScreenContainer extends StatelessWidget {
  final String title;
  final Widget body;
  final bool isHome;
  const ScreenContainer({Key key, this.title, this.body, this.isHome = false}) : super(key: key);

  Future<Widget> _getCodeStrWidget() async {
    ReCase rc = new ReCase(title);
    String filePath = 'lib/screens/${rc.snakeCase}.dart';
    String codeStr = await rootBundle.loadString(filePath);
    return Text(codeStr, style: TextStyle(color: Colors.white));
  }

  _getBodyShow(BuildContext context) {
    if (isHome == true) {
      return body;
    }
    FutureBuilder<Widget> codeStrWidget = FutureBuilder<Widget>(
      future: _getCodeStrWidget(),
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
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: codeStrWidget,
              ),
            ),
            decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(top: 12, bottom: 12),
          ),
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