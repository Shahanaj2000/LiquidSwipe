import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: const MySearchView(),
  ));
}

class MySearchView extends StatefulWidget {
  const MySearchView({super.key});

  @override
  State<MySearchView> createState() => _MySearchViewState();
}

class _MySearchViewState extends State<MySearchView> {
  //! List of items
  List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Shahanaj", "age": 11},
    {"id": 2, "name": "NajaNasna", "age": 23},
    {"id": 3, "name": "Rizwan", "age": 45},
    {"id": 4, "name": "ShadulShifan", "age": 55},
    {"id": 5, "name": "Naseehath", "age": 77},
    {"id": 6, "name": "Jabu", "age": 34},
    {"id": 7, "name": "Anchi", "age": 78},
    {"id": 8, "name": "Shaki", "age": 55},
    {"id": 9, "name": "Pachi", "age": 88},
    {"id": 10, "name": "Aji", "age": 34},
    {"id": 11, "name": "Ichu", "age": 17},
    {"id": 12, "name": "Sinu", "age": 56},
    {"id": 13, "name": "Zamu", "age": 76},
    {"id": 14, "name": "Shifna", "age": 5},
    {"id": 15, "name": "Suhana", "age": 55},
  ];

  //! init state list
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  void initState() {
    // TODO: implement initState
    _foundUsers = _allUsers;
    super.initState();
  }

  //! Filter the Lists
  void _runFilter(String enterdkeyboard) {
    List<Map<String, dynamic>> result = [];

    if (enterdkeyboard.isEmpty) {
      //? If the search feild is empty or only contains white space
      result = _allUsers;
    } else {
    result = _allUsers
                        .where((element) =>
                        element["name"].toLowerCase().contains(enterdkeyboard.toLowerCase()))
                        .toList();
    }

    setState(() {
      _foundUsers = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Serchview"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            //Search Bar
            TextField(
              onChanged: (value) {
                _runFilter(value);
              },
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),

            const SizedBox(
              height: 20,
            ),
            
            Expanded(
              child: ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) {
                  return Card(
                    key: ValueKey(_foundUsers[index]["id"]),
                    color: Colors.white,
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Text(
                        _foundUsers[index]["id"].toString(),
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      title: Text(
                        _foundUsers[index]["name"],
                        style: const TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        "${_foundUsers[index]["age"].toString()} years old",
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
