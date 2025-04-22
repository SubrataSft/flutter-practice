import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numOneTEController = TextEditingController();
  final TextEditingController _numTwoTEController = TextEditingController();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("HomeScreen")),
      body: Padding(
        padding:const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: _numOneTEController,
                decoration: const InputDecoration(
                  hintText: "number 1",
                  labelText: "number 1",
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 8),
              TextField(
                controller: _numTwoTEController,
                decoration: InputDecoration(
                  hintText: "number 2",
                  labelText: "number 2",
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: _add,
                    child: Icon(Icons.add),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: _sub,
                    child: Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: _multiply,
                    child: Icon(Icons.star),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: _divide,
                    child: Icon(Icons.ac_unit_rounded),
                  ),
                ],
              ),
              SizedBox(height: 48),
              Text("Result : $_result"),
              SizedBox(height: 50),
              Wrap(
                children: [
                  Text(
                    "This make it Subrata",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _add() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne + numberTwo;
    setState(() {});
  }

  void _sub() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne - numberTwo;
    setState(() {});
  }

  void _multiply() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne * numberTwo;
    setState(() {});
  }

  void _divide() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne / numberTwo;
    setState(() {});
  }

  @override
  void dispose() {
    _numOneTEController.dispose();
    _numTwoTEController.dispose();

    super.dispose();
  }
}
