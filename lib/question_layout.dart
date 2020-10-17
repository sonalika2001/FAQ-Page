import 'package:faq_page/constants.dart';
import 'package:faq_page/data.dart';
import 'package:faq_page/qna_tile.dart';
import 'package:flutter/material.dart';

class QuestionLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data().questions.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
            //   child: Container(
            //     padding: EdgeInsets.all(25),
            //     decoration: kleadingbgstyle,
            //     child: Text(
            //       (index + 1).toString(),
            //       style: kleadingtextstyle,
            //     ),
            //   ),
            // ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 0.05 * MediaQuery.of(context).size.width,
                    right: 0.05 * MediaQuery.of(context).size.width,
                    bottom: 0.05 * MediaQuery.of(context).size.height),
                child: Container(
                  //padding: EdgeInsets.,
                  decoration: kcarddecorstyle,
                  
                  child: Column(
                    // textBaseline: TextBaseline.alphabetic,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      // Divider(
                      //   color: kdividercolour,
                      //   thickness: 2.5,
                      // ),
                      QnATile(
                        index: index,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
