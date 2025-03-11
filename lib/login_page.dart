import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool loginsukses = true;

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _gambar(),
              Text(
                "Login",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              _usernameField(),
              _passwordField(),
              _loginButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _gambar() {
    return Container(
      height: 250,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Image(image: AssetImage("images/login.png")),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "Username",
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText: "Password",
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: (loginsukses) ? Colors.green : Colors.red,
        ),
        onPressed: () {
          String pesan = "";
          if (password == "123") {
            setState(() {
              pesan = "Login Berhasil";
              loginsukses = true;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(Username: username),
                ),
              );
            });
          } else {
            setState(() {
              pesan = "Login Gagal";
              loginsukses = false;
            });
          }
          SnackBar snackBar = SnackBar(
            backgroundColor: (loginsukses) ? Colors.green : Colors.red,
            content: Text(pesan),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Login"),
      ),
    );
  }
}
