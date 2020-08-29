import 'package:FuelCal/Input/style.dart';
import 'package:FuelCal/pop_up_keybord.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FuelEconomyInput extends StatefulWidget {
  TextEditingController fuelEconomyController;
  FuelEconomyInput({this.fuelEconomyController});
  @override
  _FuelEconomyInputState createState() => _FuelEconomyInputState();
}

class _FuelEconomyInputState extends State<FuelEconomyInput> {
  String returnFuelEconomy;
  String storeFuelEconomy;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: l10r10t15,
      padding: l10,
      color: Color(0xFFF8F8F8),
      child: TextFormField(
        controller: widget.fuelEconomyController,
        onTap: () async {
          returnFuelEconomy = await showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomKeyboard(
                keyboard: returnFuelEconomy,
              );
            },
          );
          returnFuelEconomy != null
              ? storeFuelEconomy = returnFuelEconomy
              : returnFuelEconomy = storeFuelEconomy;
          widget.fuelEconomyController.text = returnFuelEconomy;
          setState(() {});
        },
        readOnly: true,
        style: bold20,
        decoration: customInputs("Fuel Economy", "₹/l"),
      ),
    );
  }
}
