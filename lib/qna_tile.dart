import 'package:flutter/material.dart';
import 'constants.dart';
import 'data.dart';

class QnATile extends StatefulWidget {
  final int index;

  QnATile({@required this.index});

  @override
  _QnATileState createState() => _QnATileState();
}

class _QnATileState extends State<QnATile> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(
            top: 0.03 * MediaQuery.of(context).size.height,
            bottom: 0.03 * MediaQuery.of(context).size.height),
        child: Container(
          color: Colors.transparent,
          child: ExpansionTile(
            backgroundColor: Colors.transparent,
            key: PageStorageKey<int>(1),
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            title: Data().questions[widget.index],
            childrenPadding: EdgeInsets.only(left: 15),
            initiallyExpanded: false,
            trailing: expand
                ? Icon(
                    Icons.remove_circle_outline,
                    color: kcollapseiconcolor,
                    size: 25,
                  )
                : Icon(
                    Icons.add_circle_outline,
                    color: o,
                    size: 25,
                  ),
            onExpansionChanged: (value) {
              setState(() {
                expand = !expand;
              });
            },
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 5,
                  right: 5,
                  bottom: 10,
                ),
                color: Colors.transparent,
                child: Data().answers[widget.index],
              )
            ],
          ),
        ),
      ),
    );
  }
}
