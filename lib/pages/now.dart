import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState(); 
}

class _counterState extends State<counter> {

  int counter = 0 ; 

  void _pluss () {
    setState(() {
      counter++ ;
    }); 
  }
  void _moin () {
    setState(() {
      counter-- ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Home Page"),centerTitle: true, backgroundColor: Colors.deepOrange,elevation: 0 ,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("le counter is $counter",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _pluss, child: Icon(Icons.add)),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: _moin, child: Icon(Icons.arrow_downward_outlined)),
              ],
            )
          ],
        ),
      ),
    );
  }
}