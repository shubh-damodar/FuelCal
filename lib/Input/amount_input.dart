import 'package:FuelCal/pop_up_keybord.dart';
import 'package:FuelCal/Input/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AmountInput extends StatefulWidget {
  TextEditingController amountController;
  AmountInput({this.amountController});
  @override
  _AmountInputState createState() => _AmountInputState();
}

class _AmountInputState extends State<AmountInput> {
  String returnAmount;
  String storeAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: l10r10t15,
      padding: l10,
      color: Color(0xFFF8F8F8),
      child: TextFormField(
        controller: widget.amountController,
        onTap: () async {
          returnAmount = await showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomKeyboard(
                keyboard: returnAmount,
              );
            },
          );
          returnAmount != null
              ? storeAmount = returnAmount
              : returnAmount = storeAmount;
          widget.amountController.text = returnAmount;
          setState(() {});
        },
        readOnly: true,
        style: bold20,
        decoration: customInputs("Amount", "₹"),
      ),
    );
  }
}
