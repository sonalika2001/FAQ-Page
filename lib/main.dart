import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FaqScreen(),
    );
  }
}

class FaqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      body: ScreenLayout(),
    );
  }
}

class ScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(
                top: 0.05 * MediaQuery.of(context).size.height,
                
              ),
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
          Expanded(
            flex: 4,
            child: QuestionLayout(),
          ),
        ],
      ),
    );
  }
}

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
                    bottom: 0.03 * MediaQuery.of(context).size.height),
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
                    Icons.remove_circle,
                    color: c,
                    size: 25,
                  )
                : Icon(
                    Icons.add_circle,
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


//data
class Data {
  List<Text> questions = [
    Text(
      'What are the venues for the events?',
      style: kquestionstyle,
    ),
    Text(
      'What are the venues for the events?',
      style: kquestionstyle,
    ),
    Text(
      'What are the venues for the events?',
      style: kquestionstyle,
    ),
    Text(
      'What are the venues for the events?',
      style: kquestionstyle,
    ),
    Text(
      'What are the venues for the events?',
      style: kquestionstyle,
    ),
    Text(
      'What are the venues for the events?',
      style: kquestionstyle,
    ),
    Text(
      'What are the venues for the events?',
      style: kquestionstyle,
    ),
  ];

  List<Text> answers = [
    Text(
      'The venues are mentioned in the schedule section of the app.',
      style: kanswerstyle,
    ),
    Text(
      'The venues are mentioned in the schedule section of the app.',
      style: kanswerstyle,
    ),
    Text(
      'The venues are mentioned in the schedule section of the app.',
      style: kanswerstyle,
    ),
    Text(
      'The venues are mentioned in the schedule section of the app.',
      style: kanswerstyle,
    ),
    Text(
      'The venues are mentioned in the schedule section of the app.',
      style: kanswerstyle,
    ),
    Text(
      'The venues are mentioned in the schedule section of the app.',
      style: kanswerstyle,
    ),
    Text(
      'The venues are mentioned in the schedule section of the app.',
      style: kanswerstyle,
    ),
  ];
}



//constants 
const ktitlestyle = TextStyle(
  color: c,
  fontSize: 32,
  fontFamily: 'Bitter',
);
const ksubtitlestyle = TextStyle(
  color: a,
  fontSize: 20,
  fontFamily: 'Cabin',
);

const kleadingtextstyle = TextStyle(
  fontSize: 35,
  color: a,
  fontFamily: 'Ubuntu',
);

const kquestionstyle = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontFamily: 'Ubuntu',
  fontWeight: FontWeight.w600,
);

const kanswerstyle = TextStyle(
  color: c,
  fontSize: 16,
  fontFamily: 'Cabin',
);

const kcollapseiconcolor = k;

var kcarddecorstyle = ShapeDecoration(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: BorderSide(color: q, width: 3),
  ),
);

const kbackgroundcolor = Color(0xff121212);
const kPrimaryThemeColor = Color(0xff4635a7);
const kAccentThemeColor = Color(0xffb659b2);

const a = Color(0xffDDD5E2);
const c = Color(0xffBC9EDA);

const k = Color(0xffDA71CE);

const o = Color(0xffDADCDD);

const p = Color(0xff4E4BA6);
const q = Color(0xff272041);
const r = Color(0xff211F2E);
