import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linuxclock/network.dart';
import 'services/coin_data.dart';
import 'dart:io' show Platform;

// import 'dart:io' hide Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

const kPickerStyle = TextStyle(color: Colors.white);

class _PriceScreenState extends State<PriceScreen> {
  String dropdownVal = 'AUD';
  networkHelper nt = networkHelper();

  double valBTC = 0.0;
  double valETH = 0.0;
  double valLTC = 0.0;

  dynamic getPicker() {
    if (Platform.isAndroid) {
      return androidPicker();
    } else
      return iosPicker();
  }

  DropdownButton androidPicker() {
    return DropdownButton<String>(
      value: dropdownVal,
      onChanged: (change) {
        setState(() {
          dropdownVal = change!;
          updateCoinData();
        });
      },
      items: currenciesList.map<DropdownMenuItem<String>>((String elem) {
        return DropdownMenuItem<String>(child: Text(elem), value: elem);
      }).toList(),
    );
  }

  CupertinoPicker iosPicker() {
    List<Widget> lists = [];

    lists = currenciesList.map((String elem) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(elem, style: kPickerStyle),
      );
    }).toList();

    return CupertinoPicker(
        backgroundColor: Colors.lightBlue,
        itemExtent: 40.0,
        onSelectedItemChanged: (index) {
          print(index);
        },
        children: lists);
  }

  void updateCoinData() async {
    double btc = await nt.getData('BTC', dropdownVal);
    double eth = await nt.getData('ETH', dropdownVal);
    double ltc = await nt.getData('LTC', dropdownVal);

    setState(() {
      valBTC = btc;
      valETH = eth;
      valLTC = ltc;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateCoinData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('🤑 Coin Ticker')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CoinShowCase('1 ETC = ${valBTC.toStringAsFixed(2)} $dropdownVal'),
          CoinShowCase('1 ETC = ${valETH.toStringAsFixed(2)} $dropdownVal'),
          CoinShowCase('1 ETC = ${valLTC.toStringAsFixed(2)} $dropdownVal'),
          Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 30.0),
              color: Colors.lightBlue,
              child: getPicker()),
        ],
      ),
    );
  }
}

class CoinShowCase extends StatelessWidget {
  CoinShowCase(@required this.coinText);
  final String coinText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            coinText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
