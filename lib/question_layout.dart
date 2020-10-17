import 'package:faq_page/constants.dart';
import 'package:faq_page/data/data.dart';
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
            
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 0.05 * MediaQuery.of(context).size.width,
                    right: 0.05 * MediaQuery.of(context).size.width,
                    bottom: 0.05 * MediaQuery.of(context).size.height),
                child: Container(
                  decoration: kcarddecorstyle,
                  
                  child: Column(
                   
                    children: <Widget>[
                      
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
