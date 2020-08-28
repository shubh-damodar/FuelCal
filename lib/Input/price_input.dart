import 'package:FuelCal/Input/style.dart';
import 'package:FuelCal/pop_up_keybord.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PriceInput extends StatefulWidget {
  TextEditingController priceController;
  PriceInput({this.priceController});
  @override
  _PriceInputState createState() => _PriceInputState();
}

class _PriceInputState extends State<PriceInput> {
  String returnPrice;
  String storePrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: l10r10t15,
      padding: l10,
      color: Color(0xFFF8F8F8),
      child: TextFormField(
        controller: widget.priceController,
        onTap: () async {
          returnPrice = await showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomKeyboard(
                keyboard: returnPrice,
              );
            },
          );
          returnPrice != null
              ? storePrice = returnPrice
              : returnPrice = storePrice;
          widget.priceController.text = returnPrice;
          setState(() {});
        },
        readOnly: true,
        style: bold20,
        decoration: customInputs("Price", "₹/l"),
      ),
    );
  }
}
