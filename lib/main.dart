import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      home: TimerButton(),
    ),
  );
}

class TimerButton extends StatefulWidget {
  TimerButton({super.key});

  @override
  TimerButtonState createState() => TimerButtonState();
  void main() => runApp(TimerButton());
}

class TimerButtonState extends State<TimerButton> {
  int noOfPics = 0;
  var rng = Random();
  String codeqr ="";
    var _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random _rnd = Random();
    String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
        length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  // bool timing = true;
  // String imageName = listImagesnotFound[noOfPics].toString();

  void randomizer() {
    // noOfPics = rng.nextInt(3);
    // ignore: avoid_print

    // print(rng.toString());
  }

  void timers() {
    print("lol");
    // final timer = RestartableTimer(const Duration(seconds: 5), () {
    //   timing = false;
    //   disImg();
    // });
    // timer.reset();
    final periodicTimer = Timer.periodic(
      const Duration(seconds: 5),
      (timer) {

      },
    );
    // print(timing.toString());
  }

  @override
  void initState() {
    // disImg();
    // timerchange();
    // timers();
    final periodicTimer = Timer.periodic(
      const Duration(seconds: 60),
      (timer) {
        setState(() {
          codeqr = getRandomString(32);
          var qr_change = getRandomString(32);
       getRandomString(32);
       print(_rnd.toString());
        });
        // disImg();
        randomizer();
        print("lol");
        // timing = false;
        // print(change)
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // int noOfPics = 0;
    // var rng = Random();
    // bool timing = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("HIIIHIHIHIH"),
      ),
      body: Center(
        child: Container(
            margin: const EdgeInsets.all(5.0),
            width: 135.0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  QrImageView(
                    data: "${codeqr}",
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      print("lolol");
                      setState(() {
                        codeqr = getRandomString(32);
                      });
                      // disImg();
                    },
                    child: Container(
                        height: 15,
                        decoration:
                            BoxDecoration(color: Colors.blueAccent[600]),
                        child: Text("Change QR")),
                  ),
                ])),
      ),
    );
  }
}
