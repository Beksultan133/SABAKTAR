import 'package:flutter/material.dart';
 /*class ForExample extends StatefulWidget {
  const ForExample({super.key});

  @override
  State<ForExample> createState() => _ForExampleState();
}
 class _ForExampleState extends State<ForExample> {
  bool icon = true;
  bool istrue =true;
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
    title: const Text('ForExample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
        InkWell(onTap: () {
          setState(() {
            istrue=true;
            icon=true;
          });
         
        },
          child: Container(
            width: 50,
             height: 50,color:istrue? Colors.red:const Color.fromARGB(255, 174, 109, 102),
              child:icon? const Icon(Icons.male):const Icon(Icons.female)
          ),
        ),
        const SizedBox(height: 10,),
         InkWell(
          onTap: () {
            setState(() {
             istrue=false; 
             icon=false;  
            });
          
          
          },
           child: Container(
             width: 50,
              height: 50,color:!istrue?Colors.red:const Color.fromARGB(255, 192, 111, 102),
              child: !icon? const Icon(Icons.male):const Icon(Icons.female),
           ),
         ),
        ],
        ),
      ),
     );
  }
}*/

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  late double _bmiResult;
  String _bmiCategory = 'gg';

  void _calculateBMI() {
    double? height = double.tryParse(_heightController.text);
    double? weight = double.tryParse(_weightController.text);

    if (height != null && weight != null) {
      setState(() {
        _bmiResult = weight / (height * height);
        _bmiCategory = _getBMICategory(_bmiResult);
      });
    }
  }

  String _getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height (m)',
              ),
            ),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              'BMI Result: ${_bmiResult?.toStringAsFixed(2) ?? ''}',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'BMI Category: $_bmiCategory',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}






