import 'package:FuelCal/Input/amount_input.dart';
import 'package:FuelCal/Input/distance_input.dart';
import 'package:FuelCal/Input/fuel_economy_input.dart';
import 'package:FuelCal/Input/fuel_input.dart';
import 'package:FuelCal/Input/price_input.dart';
import 'package:FuelCal/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.distance}) : super(key: key);
  final String distance;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedJob;
  String finalResult;

  TextEditingController distanceController = TextEditingController();
  TextEditingController fuelController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController fuelEconomyController = TextEditingController();

  bool option;

  optionAndBack() async {
    option == true ? option = false : option = true;
    setState(() {});
  }

  @override
  void initState() {
    finalResult = "0";
    selectedJob = "Economy";
    option = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("FuelCal"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 63,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    if (selectedJob != "Economy") {}
                    selectedJob = "Economy";
                    option = true;
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Icon(
                        Icons.directions_bike,
                        color:
                            selectedJob == 'Economy' ? Colors.black : greyColor,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Economy",
                        style: selectedJob == 'Economy'
                            ? TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            : TextStyle(
                                fontSize: 10,
                                color: greyColor,
                              ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        height: 2,
                        width: 31,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: selectedJob == 'Economy'
                              ? Colors.black
                              : Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (selectedJob != "Distance") {}
                    selectedJob = "Distance";
                    option = true;
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Icon(
                        Icons.data_usage,
                        color: selectedJob == 'Distance'
                            ? Colors.black
                            : greyColor,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Distance",
                        style: selectedJob == 'Distance'
                            ? TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            : TextStyle(
                                fontSize: 10,
                                color: greyColor,
                              ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        height: 2,
                        width: 31,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: selectedJob == 'Distance'
                              ? Colors.black
                              : Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (selectedJob != "Fuel") {}
                    selectedJob = "Fuel";
                    option = true;
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Icon(
                        Icons.battery_charging_full,
                        color: selectedJob == 'Fuel' ? Colors.black : greyColor,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Fuel",
                        style: selectedJob == 'Fuel'
                            ? TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            : TextStyle(
                                fontSize: 10,
                                color: greyColor,
                              ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        height: 2,
                        width: 31,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: selectedJob == 'Fuel'
                              ? Colors.black
                              : Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (selectedJob != "Amount") {}
                    selectedJob = "Amount";
                    option = true;
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Icon(
                        Icons.monetization_on,
                        color:
                            selectedJob == 'Amount' ? Colors.black : greyColor,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Amount",
                        style: selectedJob == 'Amount'
                            ? TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            : TextStyle(
                                fontSize: 10,
                                color: greyColor,
                              ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        height: 2,
                        width: 31,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: selectedJob == 'Amount'
                              ? Colors.black
                              : Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (selectedJob == "Economy")
            option == true
                ? Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        DistanceInput(distanceTextCtrl: distanceController),
                        FuelInput(fuelController: fuelController),
                        Container(
                          padding: EdgeInsets.only(right: 10, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  optionAndBack();
                                },
                                child: Text("Option >>"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        DistanceInput(distanceTextCtrl: distanceController),
                        PriceInput(priceController: priceController),
                        AmountInput(amountController: amountController),
                        Container(
                          padding:
                              EdgeInsets.only(right: 10, top: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  optionAndBack();
                                },
                                child: Text("<< Back"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
          else if (selectedJob == "Distance")
            option == true
                ? Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FuelEconomyInput(
                            fuelEconomyController: fuelEconomyController),
                        FuelInput(fuelController: fuelController),
                        Container(
                          padding: EdgeInsets.only(right: 10, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  optionAndBack();
                                },
                                child: Text("Option >>"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FuelEconomyInput(
                            fuelEconomyController: fuelEconomyController),
                        PriceInput(priceController: priceController),
                        AmountInput(amountController: amountController),
                        Container(
                          padding:
                              EdgeInsets.only(right: 10, top: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  optionAndBack();
                                },
                                child: Text("<< Back"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
          else if (selectedJob == "Fuel")
            option == true
                ? Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FuelEconomyInput(
                            fuelEconomyController: fuelEconomyController),
                        DistanceInput(distanceTextCtrl: distanceController),
                        Container(
                          padding: EdgeInsets.only(right: 10, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  optionAndBack();
                                },
                                child: Text("Option >>"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        PriceInput(priceController: priceController),
                        AmountInput(amountController: amountController),
                        Container(
                          padding:
                              EdgeInsets.only(right: 10, top: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  optionAndBack();
                                },
                                child: Text("<< Back"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
          else if (selectedJob == "Amount")
            option == true
                ? Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        PriceInput(priceController: priceController),
                        FuelInput(fuelController: fuelController),
                        Container(
                          padding: EdgeInsets.only(right: 10, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  optionAndBack();
                                },
                                child: Text("Option >>"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        PriceInput(priceController: priceController),
                        FuelEconomyInput(
                            fuelEconomyController: fuelEconomyController),
                        DistanceInput(distanceTextCtrl: distanceController),
                        Container(
                          padding:
                              EdgeInsets.only(right: 10, top: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  optionAndBack();
                                },
                                child: Text("<< Back"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () async {
          if (option == true) {
            finalResult = (double.parse(distanceController.text) /
                    double.parse(fuelController.text))
                .toString();
          } else {}
          setState(() {});
        },
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        elevation: 7,
        shape: CircularNotchedRectangle(),
        child: Container(
          margin: EdgeInsets.only(left: 20),
          height: 80,
          child: Row(
            children: <Widget>[
              Text(
                "Result : $finalResult",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
