import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.pink),
    home: const MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int currentIndex = 0;

  continueStep() {
    if (currentIndex < 2) {
      setState(() {
        currentIndex = currentIndex + 1;
      });
    }
  }

  cancelStep() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex = currentIndex - 1;
      });
    }
  }

  //! Directly gives us the index of tap steps
  onTapped( int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        currentStep: currentIndex,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        onStepTapped: onTapped,
        steps: [
          Step(
            title: const Text('Step 1'),
            content: Container(
                alignment: Alignment.centerLeft,
                child: const Text("This is the step 1")),
          ),
          Step(
            title: const Text('Step 2'),
            content: Container(
                alignment: Alignment.centerLeft,
                child: const Text("This is the step 2")),
          ),
          Step(
            title: const Text('Step 3'),
            content: Container(
                alignment: Alignment.centerLeft,
                child: const Text("This is the step 3")),
          ),
        ],
      ),
    );
  }
}
