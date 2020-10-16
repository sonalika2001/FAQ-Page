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
      decoration: expand ? kquestionbgstyle : null,
      child: ExpansionTile(
        backgroundColor: kbackgroundcolor,
        key: PageStorageKey<int>(1),
        expandedCrossAxisAlignment: CrossAxisAlignment.center,
        title: Data().questions[widget.index],
        childrenPadding: EdgeInsets.only(left: 15),
        initiallyExpanded: false,
        trailing: expand
            ? Icon(
                Icons.remove_circle_outline,
                color: kcollapseiconcolor,
                size: 35,
              )
            : Icon(
                Icons.add_circle_outline,
                size: 35,
              ),
        onExpansionChanged: (value) {
          setState(() {
            expand = !expand;
          });
        },
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: Data().answers[widget.index],
          )
        ],
      ),
    );
  }
}
