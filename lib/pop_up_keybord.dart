import 'package:FuelCal/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustomKeyboard extends StatefulWidget {
  String keyboard;
  CustomKeyboard({this.keyboard});

  @override
  _CustomKeyboardState createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  int pinIdex = 0;
  String allDigits;

  void pinIndexSetup(String text) {
    HapticFeedback.lightImpact();
    if (allDigits == null) {
      allDigits = "$text";
    } else {
      if (allDigits.contains('.') == true && text == '.') {
        print("");
      } else {
        allDigits = "$allDigits" + "$text";
      }
    }
    newValue(allDigits);
  }

  clearLastNumber() {
    HapticFeedback.lightImpact();
    if ((allDigits != null) && (allDigits.length > 0)) {
      allDigits = allDigits.substring(0, allDigits.length - 1);
    }
    newValue(allDigits);
  }

  newValue(allDigits) {
    setState(() {
      textValue = TextEditingController(text: allDigits);
    });
  }

  buildNumberPad() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KeyBoardNumber(
                  n: 1,
                  onPressed: () {
                    pinIndexSetup("1");
                  }),
              KeyBoardNumber(
                  n: 2,
                  onPressed: () {
                    pinIndexSetup("2");
                  }),
              KeyBoardNumber(
                  n: 3,
                  onPressed: () {
                    pinIndexSetup("3");
                  }),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KeyBoardNumber(
                  n: 4,
                  onPressed: () {
                    pinIndexSetup("4");
                  }),
              KeyBoardNumber(
                  n: 5,
                  onPressed: () {
                    pinIndexSetup("5");
                  }),
              KeyBoardNumber(
                  n: 6,
                  onPressed: () {
                    pinIndexSetup("6");
                  }),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KeyBoardNumber(
                  n: 7,
                  onPressed: () {
                    pinIndexSetup("7");
                  }),
              KeyBoardNumber(
                  n: 8,
                  onPressed: () {
                    pinIndexSetup("8");
                  }),
              KeyBoardNumber(
                  n: 9,
                  onPressed: () {
                    pinIndexSetup("9");
                  }),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 60,
                  child: MaterialButton(
                    height: 60.0,
                    onPressed: () {
                      pinIndexSetup(".");
                    },
                    child: Container(
                      height: 6.0,
                      width: 6.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )),
              KeyBoardNumber(
                n: 0,
                onPressed: () {
                  pinIndexSetup("0");
                },
              ),
              Container(
                  width: 60,
                  child: MaterialButton(
                    height: 60.0,
                    onPressed: () {
                      clearLastNumber();
                    },
                    onLongPress: () {
                      textValue.clear();
                      allDigits = null;
                    },
                    child: Icon(
                      Icons.backspace,
                      color: Colors.white,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }

  TextEditingController textValue = TextEditingController();

  @override
  void initState() {
    allDigits = widget.keyboard;
    textValue.text = widget.keyboard;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return AlertDialog(
      contentPadding: EdgeInsets.all(5.0),
      insetPadding: EdgeInsets.all(50.0),
      backgroundColor: Colors.black.withOpacity(1),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      title: null,
      content: Container(
        padding: EdgeInsets.only(top: 10, left: 5, right: 5),
        height: screenHeight / 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(),
              height: screenHeight / 12,
              child: TextFormField(
                controller: textValue,
                readOnly: true,
                // maxLength: 12,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Add Numbers",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.all(3),
                ),
              ),
            ),
            Expanded(
              child: buildNumberPad(),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          width: screenWidth,
          height: 50,
          child: RaisedButton(
            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            onPressed: () {
              Navigator.pop(context, allDigits);
              HapticFeedback.lightImpact();
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Done",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
