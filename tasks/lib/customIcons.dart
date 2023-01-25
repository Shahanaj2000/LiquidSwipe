import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
    home: const MyCustomIcons(),
  ));
}

class MyCustomIcons extends StatelessWidget {
  const MyCustomIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 100,
                color: Colors.deepPurple,
                padding: const EdgeInsets.all(20),
                child: Flexible(
                    child: Image.asset(
                  "/home/ubantu/Luminar_Nov/Nov_Seminars/tasks/assets/icons/school.png",
                  color: Colors.white,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
