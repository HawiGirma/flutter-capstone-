import 'package:flutter/material.dart';
import 'package:commerce/tools.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Register',
      home: RegisterPage(),
      
    );
  }
}


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController controlEmail = TextEditingController();
  final TextEditingController controlUsername = TextEditingController();
  final TextEditingController controlPassword = TextEditingController();
  bool password = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30),
              const Text(
                'Lets Sign You in',
                style:  TextStyle(fontSize: 28,
                fontFamily: ' GoogleFonts.lato',
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              const  Text(
                'Welcome back,',
                style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              ),
              const SizedBox(height: 70),

              const Text(
                'Username or Email',
                style: TextStyle(fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,),
                textAlign: TextAlign.end,
              ),
              TextFormField(
                controller: controlEmail,
                obscureText: false,
                decoration: const InputDecoration(
                    // labelText: 'Email', 
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Username' ,
                    hintStyle:TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  
                    ),
          
          keyboardType: TextInputType.emailAddress,
                
              ),
            
              const SizedBox(height: 50),
               const Text(
                'Password',
                style: TextStyle(fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,),
                textAlign: TextAlign.end,
              ),
              TextField(
                controller: controlPassword,
                decoration: const InputDecoration(
                    // labelText: 'password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off),
                    hintText: "*********",
                   hintStyle:TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                obscureText: true,
                
              ),
              
              const SizedBox(height: 230),
       
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.stretch,
              
                children: [
                  ElevatedButton.icon(
                    
                    onPressed: (){},
                    label: const Text('SIGN IN', 
                    style: TextStyle( fontSize: 14),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                       foregroundColor: Colors.white,
                        backgroundColor: colorPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  icon: const Icon(Icons.login),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        );
  }

  void _registrar() {
    print('Create account');
  }
}
