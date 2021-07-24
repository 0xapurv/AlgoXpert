import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:app/code/python.dart';
import 'package:app/code/cpp.dart';
import 'package:app/code/dart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:app/screens/code.dart';

class Code extends StatelessWidget {
  const Code({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final CodeBD widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 22,
          child: TabBarView(children: [
            new Container(
              child: SyntaxView(
                code: CPP.code[widget.title],
                syntax: Syntax.DART,
                syntaxTheme: SyntaxTheme.gravityLight(),
                withZoom: true,
                withLinesCount: true,
              ),
            ),
            new Container(
              child: SyntaxView(
                code: PYTHON.code[widget.title],
                syntax: Syntax.DART,
                syntaxTheme: SyntaxTheme.gravityLight(),
                withZoom: true,
                withLinesCount: true,
              ),
            ),
            new Container(
              child: SyntaxView(
                code: DART.code[widget.title],
                syntax: Syntax.DART,
                syntaxTheme: SyntaxTheme.gravityLight(),
                withZoom: true,
                withLinesCount: true,
              ),
            ),
          ]),
        ),
        TabBar(
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              icon: Icon(FontAwesomeIcons.plus),
              text: "C++",
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.python),
              text: "Python",
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.bullseye),
              text: "Dart",
            ),
          ],
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.amber,
          ),
        )
      ],
    );
  }
}
