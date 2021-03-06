import 'package:flutter/material.dart';
import 'package:preg_calc/widgets/DateWidget.dart';
import 'package:preg_calc/widgets/MonthWidget.dart';
import 'package:preg_calc/widgets/ResultCard.dart';
import 'package:provider/provider.dart';
import 'package:preg_calc/models/EDD.dart';

class EDDCalculation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EDD(),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
            child: Text('Select the due date to calculate gestational period'),),
          DateWidget(type: 'edd'),
          MonthWidget(type: 'edd'),
          SizedBox(
            height: 4.0,
          ),
          ResultCard(type: 'edd')
        ],
      ),
    );
  }
}