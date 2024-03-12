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
      home: EditProductScreen(),
    );
  }
}

class EditProductScreen extends StatefulWidget { 
  @override _EditProductScreenState createState() => _EditProductScreenState(); }

class _EditProductScreenState extends State<EditProductScreen> {

String productName = "Nike Shoes"; 
String price = "300"; 
String description = "Sample description for Nike shoes."; 
String selectedSize = "";

@override Widget build(BuildContext context) { 
  return Scaffold( 
    appBar: AppBar(), 
       body: SingleChildScrollView(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[ 
        // Header part Edit Product    
        Column( 
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [ 
            const SizedBox(height: 30),
              const Text(
                'Edit Product',
                style:  TextStyle(fontSize: 28,
                fontFamily: ' GoogleFonts.lato',
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 30),
            OutlinedButton.icon(
            onPressed: (){},
            
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20),
              foregroundColor: colorPrimary,
              backgroundColor: Colors.white,
              side: const BorderSide(color: colorPrimary, width: 2) ,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)),
                    
            ),
            icon: const Icon(Icons.file_upload_outlined),
            label: const Text('Upload product Picture'),
          ),
         const  SizedBox(height: 30,),
         

        // Name field
        TextField(
          decoration: const InputDecoration(labelText: "Product name", labelStyle: TextStyle(fontWeight: FontWeight.bold,)),
          onChanged: (value) => productName = value,
        ),
          const  SizedBox(height: 30,),
        // Price field 
        TextField(
          decoration: const InputDecoration(labelText: "Product price",  labelStyle: TextStyle(fontWeight: FontWeight.bold,)),
          onChanged: (value) => price = value,
        ),
          const  SizedBox(height: 30,),
        // Description field
        TextField(
          decoration: const InputDecoration(labelText: "Product Description",  labelStyle: TextStyle(fontWeight: FontWeight.bold,)),
          maxLines: 5,
          onChanged: (value) => description = value,
        ),



        // Sizes
        const SizedBox(height: 50),
        
               const Text(
                'Product Size',
                style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,),
                textAlign: TextAlign.start,
              ),
        const SizedBox(height: 20),
        Wrap(
          children: [
            //small
            ChoiceChip(
              label:const Text("small",
              style: TextStyle(fontSize: 14,
              ),
              ),
               
              selected: selectedSize == "Small",
              onSelected: (bool value) {
                setState(() {
                  selectedSize = "Small";
                });
              },
            ),


            //  medium 
          
         
            ChoiceChip(
              label:const Text("medium",
              style: TextStyle(fontSize: 14,
              ),
              ), 
              selected: selectedSize == "Small",
              onSelected: (bool value) {
                setState(() {
                  selectedSize = "Small";
                });
              },
            ),


            //  large 
          
            ChoiceChip(
              label:const Text("large",
              style: TextStyle(fontSize: 14,
              ),
              ),
              selected: selectedSize == "Small",
              onSelected: (bool value) {
                setState(() {
                  selectedSize = "Small";
                });
              },
            ),
            // similarly medium and large
            TextField(
          decoration: const InputDecoration(hintText: "select size", 
           hintStyle: TextStyle(fontWeight: FontWeight.w300,),
           suffixIcon: Icon(Icons.arrow_drop_down_circle_outlined),
           ),
        
          onChanged: (value) => description = value,
        ),
          ],

        ),
         const SizedBox(height: 80,),


         // Button Edit Product
        Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.stretch,
              
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                       foregroundColor: Colors.white,
                        backgroundColor: colorPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
               onPressed: (){},
                    child: const Text('Edit Product'),
                  ),
                ],
              ),
        
      ],
    ),
  
  ],
  ),
  ),

);
} }