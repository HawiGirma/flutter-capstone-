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
                'Getting Started',
                style:  TextStyle(fontSize: 28,
                fontFamily: ' GoogleFonts.lato',
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              const  Text(
                'Create an account to continue!',
                style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              ),
              const SizedBox(height: 30),

              const Text(
                'Email',
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
                    hintText: "example@example.com"),
                keyboardType: TextInputType.emailAddress,
                
              ),
              const SizedBox(height: 16),
               const Text(
                'User Name',
                style: TextStyle(fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,),
                textAlign: TextAlign.end,
              ),
              TextField(
                controller: controlUsername,
                decoration: const InputDecoration(
                    // labelText: 'Username', 
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.check, color: Colors.green,),
                    hintText: "Username"),
                keyboardType: TextInputType.text,),
              
              const SizedBox(height: 16),
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
                    hintText: "********",
                    ),
                obscureText: true,
                
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Checkbox(
                    value: password,
                    onChanged: (valor) {
                      setState(() {
                        password = valor ?? false;
                      });
                    },
                  ),
            const Column(
                children: [
                       Text(
                          'By creating an account, you agree to our',),
                       Text(' Term & Conditions', style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),),
                    ],
                  ),
                ],
              ),
               
              const SizedBox(height: 200),
       
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.stretch,
              
                children: [
                  ElevatedButton.icon(
                    
                    onPressed: password ? _registrar : null,
                    label: const Text('SIGN UP', 
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
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Text('Already have an account? Sign in',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
        );
  }

  void _registrar() {
    print('Create account');
  }
}
