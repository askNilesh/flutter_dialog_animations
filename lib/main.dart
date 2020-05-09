import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter dialogs with animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RaisedButton(
                onPressed: openDialogFromBottom,
                child: Text('Open dialogs from bottom'),
              ),
              RaisedButton(
                onPressed: openDialogFromLeft,
                child: Text('Open dialogs from left'),
              ),
              RaisedButton(
                onPressed: openDialogFromTop,
                child: Text('Open dialogs from top'),
              ),
              RaisedButton(
                onPressed: openDialogFromRight,
                child: Text('Open dialogs from right'),
              ),
              RaisedButton(
                onPressed: openDialogWithBounceAnimation,
                child: Text('Open dialogs with bounce animation'),
              ),
              RaisedButton(
                onPressed: openDialogWithRotateAnimation,
                child: Text('Open dialogs with rotate animation'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openDialogFromBottom() {
    showGeneralDialog(
      barrierLabel: "AskNilesh",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            child:
                SizedBox.expand(child: Image.asset('assets/images/nilu.jpg')),
            margin: EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }

  void openDialogWithRotateAnimation() {
    showGeneralDialog(
      barrierLabel: "AskNilesh",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            child:
                SizedBox.expand(child: Image.asset('assets/images/nilu.jpg')),
            margin: EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return Transform.rotate(
          angle: math.radians(anim1.value * 360),
          child: child,
        );
        ;
      },
    );
  }

  void openDialogFromLeft() {
    showGeneralDialog(
      barrierLabel: "AskNilesh",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            child:
                SizedBox.expand(child: Image.asset('assets/images/nilu.jpg')),
            margin: EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(1, 0), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }

  void openDialogFromTop() {
    showGeneralDialog(
      barrierLabel: "AskNilesh",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            child:
                SizedBox.expand(child: Image.asset('assets/images/nilu.jpg')),
            margin: EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, -1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }

  void openDialogFromRight() {
    showGeneralDialog(
      barrierLabel: "AskNilesh",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            child:
                SizedBox.expand(child: Image.asset('assets/images/nilu.jpg')),
            margin: EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(-1, 0), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }

  void openDialogWithBounceAnimation() {
    showGeneralDialog(
      barrierLabel: "AskNilesh",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 400),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            child:
                SizedBox.expand(child: Image.asset('assets/images/nilu.jpg')),
            margin: EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: anim1,
            curve: Curves.bounceIn,
            reverseCurve: Curves.bounceIn,
          ),
          child: child,
        );
      },
    );
  }
}
