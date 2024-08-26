import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
             const SizedBox(
                height: 30,
              ),
              buildTextField("Email Address", "adcdef@gmail.com", emailController,Icon(Icons.email_outlined),),
             const SizedBox(
                height: 30,
              ),
             buildTextField("Password", "123abc", passwordController, Icon(Icons.lock), Icon(Icons.remove_red_eye),),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  )),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?"),
                    TextButton(
                        onPressed: () {}, child: Text("Register now.")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label,String hint,controller,Icon icon,[Icon? icon2]) => TextFormField(
        controller: controller,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          prefixIcon: icon,
          suffixIcon:icon2,
          labelText: (label),
          hintText: (hint),
          border: OutlineInputBorder(),
        ),
        onFieldSubmitted: (String value) {
          print(value);
        },
      );
}
