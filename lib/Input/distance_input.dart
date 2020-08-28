import 'package:FuelCal/Input/style.dart';
import 'package:FuelCal/pop_up_keybord.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DistanceInput extends StatefulWidget {
  TextEditingController titleTextCtrl;

  DistanceInput({this.titleTextCtrl});
  @override
  _DistanceInputState createState() => _DistanceInputState();
}

class _DistanceInputState extends State<DistanceInput> {
  var storeNewDistance;
  var returnNewDistance;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: l10r10t15,
      padding: l10,
      color: Color(0xFFF8F8F8),
      child: TextFormField(
          controller: widget.titleTextCtrl,
          onTap: () async {
            returnNewDistance = await showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomKeyboard(
                  keyboard: returnNewDistance,
                );
              },
            );
            returnNewDistance != null
                ? storeNewDistance = returnNewDistance
                : returnNewDistance = storeNewDistance;
            widget.titleTextCtrl.text = returnNewDistance;
            setState(() {});
          },
          readOnly: true,
          style: bold20,
          decoration: customInputs("Distance", "km")),
    );
  }
}
