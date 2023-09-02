import 'package:discovery_app/subPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Discovery',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          height: MediaQuery.of(context).size.height,
          color: Colors.grey.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('beer', 'Bars & Hotels','42 Place'),
                  getExpanded('cuisine','Fine Dining','15 Place'),
                ],
              )),
              Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      getExpanded('cafe', 'Cafes','28 Place'),
                      getExpanded('tracking','Nearby','34 Place'),
                    ],
                  )),
              Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      getExpanded('dining', 'Fast Foods','29 Place'),
                      getExpanded('fast-food','Featured Foods','21 Place'),
                    ],
                  )),
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.orange,size: 35,),
          label: 'Home',
            backgroundColor: Colors.orange.shade100,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined,color: Colors.orange,size: 35,),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,color: Colors.orange,size: 35,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: Colors.orange,size: 35,),
            label: '',
          ),

        ],
        selectedItemColor: Colors.black, // Color of the selected item's label
        unselectedItemColor: Colors.grey,
      ),
    );
  }

Expanded getExpanded(String image,String mainText,String subText){  //ahiya apde outer funtion lidhu for code redubility mte
    // as a small square = Every Container
    return Expanded(
      child: TextButton(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/$image.png',
                    height: 80.0,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '$mainText',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '$subText',
                    style: TextStyle(fontSize: 10.0,color: Colors.black),
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.only(left: 10.0,top: 10.0,bottom: 10.0,right: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(),
              ],
            ),
          ),
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage(mainText),));
        },
      ),
    );
}

}
