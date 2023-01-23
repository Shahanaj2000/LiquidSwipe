import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: SLIDER(),
  ));
}

class SLIDER extends StatefulWidget {
  const SLIDER({super.key});

  @override
  State<SLIDER> createState() => _SLIDERState();
}

class _SLIDERState extends State<SLIDER> {

  //! Create a variable 
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! If i want to kno the changing values
           
            const Icon(Icons.volume_up),

            Expanded(
              child: Slider(
                //? Set the default values
                min: 0,
                max: 10,
                divisions: 10,
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                //label: 'Set a volume',
                label: _currentValue.round().toString(),
                value: _currentValue,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
            ),
            Text(_currentValue.toString(), style: const TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}