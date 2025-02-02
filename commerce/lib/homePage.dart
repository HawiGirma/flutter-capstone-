import 'package:flutter/material.dart';
import 'package:commerce/tools.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const i = 40.0;
    return Scaffold(
      
      body: Column(
        
        children: <Widget>[
          
          Expanded(
            flex: 2,
            
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 50,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(500),
                        topLeft: Radius.circular(500),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                ),
                Positioned(
                  top: 380,
                  left: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 197, 194),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(700),
                        topRight: Radius.circular(700),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ),
                Positioned(
                  top: 200,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 200,
                    child:Image.asset('page1.png', 
                   width: MediaQuery.of(context).size.width * 0.6,
                    height: 200,),
                    ),
                  ),
               ], ),
                ),
              


          
            SingleChildScrollView(
          padding: const EdgeInsets.all(60.0),
          child: Column(
              
              children: <Widget>[
                
                const SizedBox(height: 24),
              
                const Text(
                  'Welcome to Our Store!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                    ' sed do eiusmod tempor.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton.icon(
                        
                        onPressed: (){},
                        label: const Text('Get Started', 
                        style: TextStyle( fontSize: 14),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                           foregroundColor: Colors.white,
                            backgroundColor: colorPrimary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      icon: const Icon(Icons.arrow_right_sharp),
                      ),
                    ],
                  ),
                
              ],
            ),
            ),
          
        ],
            ),
            
    );
  }
}
