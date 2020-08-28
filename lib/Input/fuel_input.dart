import 'package:FuelCal/Input/style.dart';
import 'package:FuelCal/pop_up_keybord.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FuelInput extends StatefulWidget {
  TextEditingController fuelController;
  FuelInput({this.fuelController});
  @override
  _FuelInputState createState() => _FuelInputState();
}

class _FuelInputState extends State<FuelInput> {
  String returnFuel;
  String storeFuel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: l10r10t15,
      padding: l10,
      color: Color(0xFFF8F8F8),
      child: TextFormField(
        controller: widget.fuelController,
        onTap: () async {
          returnFuel = await showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomKeyboard(
                keyboard: returnFuel,
              );
            },
          );
          returnFuel != null ? storeFuel = returnFuel : returnFuel = storeFuel;
          widget.fuelController.text = returnFuel;
          setState(() {});
        },
        readOnly: true,
        style: bold20,
        decoration: customInputs("Fuel", "l"),
      ),
    );
  }
}
