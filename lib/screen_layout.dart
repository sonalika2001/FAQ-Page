import 'package:faq_page/constants.dart';
import 'package:faq_page/question_layout.dart';
import 'package:flutter/material.dart';

class ScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.03 * MediaQuery.of(context).size.height,
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'FAQ',
                        style: ktitlestyle,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Center(
                      child: Text(
                        'Frequently Asked Questions',
                        style: ksubtitlestyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: QuestionLayout(),
          ),
        ],
      ),
    );
  }
}
