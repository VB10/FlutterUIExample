import 'package:flutter/material.dart';
import 'package:oneframe/shared/widgets/form/text_input.dart';
import 'package:pie_chart/pie_chart.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key key}) : super(key: key);

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  Map<String, double> _dataMap = new Map();

  bool _toogle = false;
  @override
  void initState() {
    super.initState();
    _dataMap.putIfAbsent("Flutter", () => 5);
    _dataMap.putIfAbsent("React", () => 3);
    _dataMap.putIfAbsent("Xamarin", () => 2);
    _dataMap.putIfAbsent("Ionic", () => 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _toogle = !_toogle;
          });
        },
      ),
      body: Center(
        child: _toogle
            ? PieChart(
                dataMap: _dataMap,
                legendFontColor: Colors.blueGrey[900],
                legendFontSize: 14.0,
                legendFontWeight: FontWeight.w500,
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 32.0,
                chartRadius: MediaQuery.of(context).size.width / 2.7,
                showChartValuesInPercentage: true,
                showChartValues: true,
                chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
              )
            : MyCustomForm(),
      ),
    );
  }
}
