import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  final formData = GlobalKey<FormState>;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: ()async{
SharedPreferences sp = await SharedPreferences.getInstance();
sp.setString('name', 'Emon');
sp.setString('age', '22');
sp.setBool('isLogin', false);

sp.remove('name');
print(sp.getString('name'));


print(sp.getString('name'));
print(sp.getString('age'));
print(sp.getBool('isLogin'));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: Center(
                  child: Text('Click'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }



}


