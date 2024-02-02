import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final TextEditingController t1 = TextEditingController(
      text:
          "0"); //Whenever the user modifies a text field with an associated TextEditingController, the text field updates value
  final TextEditingController t2 = TextEditingController(text: "0");

  var num1 = 0, num2 = 0, sum = 0; //initial number will be 0

  void doaddition() {
    // addition function
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(
          t2.text); //passing values to addition function from text field
      sum = num1 + num2;
    });
  }

  void dosubraction() {
    // addition function
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(
          t2.text); //passing values to addition function from text field
      sum = num1 - num2;
    });
  }

  void domultiplication() {
    // addition function
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(
          t2.text); //passing values to addition function from text field
      sum = num1 * num2;
    });
  }

  void dodivision() {
    // addition function
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(
          t2.text); //passing values to addition function from text field
      sum = (num1 / num2).toInt();
    });
   
    } void doclear() {
      setState(() {
        t1.text = "0";
        t2.text = "0";
      });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("HomePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Output: $sum",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: t1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "enter first no",
                    labelStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: t2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "enter Second no",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 10),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: doaddition, child: Text("+")),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(onPressed: dosubraction, child: Text("-")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: domultiplication, child: Text("*")),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(onPressed: dodivision, child: Text("/")),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // MaterialButton(onPressed: doclear,child: Text("Clear"),),
                  ElevatedButton(onPressed: doclear, child: Text("Clear")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
