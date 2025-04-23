import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Home", home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController agTEController = TextEditingController();
  TextEditingController ftTEController = TextEditingController();
  TextEditingController incTEController = TextEditingController();
  TextEditingController kgTEController = TextEditingController();
  double? ans = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("BMI Calaculator"),
        actions: [
          IconButton(
            onPressed: () {
              dispose();
            },
            icon: Icon(Icons.replay_5_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: agTEController,
                      decoration: InputDecoration(labelText: "Age"),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: ftTEController,
                      decoration: InputDecoration(labelText: "Ht(ft)"),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: incTEController,
                      decoration: InputDecoration(labelText: "Ht(in)"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.male)),
                  Text("|"),
                  IconButton(onPressed: () {}, icon: Icon(Icons.female)),
                  SizedBox(height: 24),
                  SizedBox(
                    width: 90,
                    child: TextFormField(
                      controller: kgTEController,
                      decoration: InputDecoration(labelText: "Weight(kg)"),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      double? ft = double.tryParse(ftTEController.text) ?? 0;
                      double? inc = double.tryParse(incTEController.text) ?? 0;
                      double? kg = double.tryParse(kgTEController.text) ?? 0;
        
                      double? meter = (ft * 12 + inc) * 0.0254;
                      ans = kg / (meter * meter);
                      setState(() {});
                    },
                    icon: Icon(Icons.chevron_right),
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                child: SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 150,
                      ranges: <GaugeRange>[
                        GaugeRange(
                          startValue: 0,
                          endValue: 15,
                          color: Colors.red,
                        ),
                        GaugeRange(
                          startValue: 15,
                          endValue: 40,
                          color: Colors.green,
                        ),
                        GaugeRange(
                          startValue: 40,
                          endValue: 170,
                          color: Colors.yellow,
                        ),
                      ],
                      pointers: <GaugePointer>[
                        NeedlePointer(value: ans?.toDouble() ?? 0),
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          widget: Container(
                            child: Text((ans?.toStringAsFixed(2)).toString(),
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          angle: 90,
                          positionFactor: 0.5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Very Severaly UnderWeight",
                          style: TextStyle(
                            fontSize: 18,
                            color:
                                (ans?.toDouble() ?? 0) < 15.9
                                    ? Colors.green
                                    : Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Text("<- 50"),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Very Severaly UnderWeight",
                          style: TextStyle(
                            fontSize: 18,
                            color:
                                (ans?.toDouble() ?? 0) < 15.9
                                    ? Colors.green
                                    : Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Text("<- 50"),
                      ],
                    ),
                    SizedBox(height: 28),
                    Text(
                      "Normal Weight: 60-70",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    agTEController.clear();
    ftTEController.clear();
    incTEController.clear();
    kgTEController.clear();
  }
}
