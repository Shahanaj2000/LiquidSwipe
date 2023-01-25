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
  onTapped(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: details.onStepContinue,
          child: const Text("Next"),
        ),
        const SizedBox(width: 10,),
        OutlinedButton(
          onPressed:  details.onStepCancel,
          child: const Text("Back"),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        currentStep: currentIndex,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        onStepTapped: onTapped,
        controlsBuilder: controlBuilders,
        type: StepperType.horizontal,
        elevation: 0,
        steps: [
          Step(
            title: const Text('Step 1'),
            content: Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Text("This is the step 1"),
                )),
                isActive: currentIndex >= 0,
                state: currentIndex >= 0 ? StepState.complete : StepState.disabled,
                // subtitle: Text("Hai"),
                // label: Icon(Icons.check)
          ),
          Step(
            title: const Text('Step 2'),
            content: Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Text("This is the step 2"),
                )),
                isActive: currentIndex >= 1,
                state: currentIndex >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 3'),
            content: Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Text("This is the step 3"),
                )),
                isActive: currentIndex >= 2,
                state: currentIndex >= 2 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }
}
