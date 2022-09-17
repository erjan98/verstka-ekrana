import 'package:flutter/material.dart';
import 'package:verstka_erana_/main.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage()
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 43, 28),
      appBar: AppBar(
        title: const Text('Sample app',
        style: TextStyle(color: Colors.white),

      ),
      
   
    ),
    body: Row(
      children: [
        
        Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(height: 120, 
            width : MediaQuery.of(context).size.width,
           color: Color.fromARGB(255, 30, 225, 40),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyConteiners(),
              MyConteiners(),
              MyConteiners(),
             
            ],
           ),
           ),
        
           
          ],
        ),
      ],
    ),
    );
  }
}

class MyConteiners extends StatelessWidget {
  const MyConteiners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      color: Colors.amber,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('+', 
          style: TextStyle(fontSize: 30),)),
          Center(child: Text('Add',
          style: TextStyle(fontSize: 20),))
        ],
      ),
      
    );
  }
}
