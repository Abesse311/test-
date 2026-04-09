import 'package:flutter/material.dart'; 

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Home Page"),centerTitle: true, backgroundColor: Colors.deepOrange,elevation: 0 ,),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 150,
                color: Colors.yellow,
              )
            ],
          )
        ],
      ),
    );
  }
}