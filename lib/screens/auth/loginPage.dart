import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/constants.dart';

import '../../widgets/loginCustomizedButton.dart';
import '../../widgets/loginTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //variables:
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;

  //functions:

  //function 1:

  @override
  void initState() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //this little code down here turns off auto rotation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loginScreenBackground.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Image(
                            image: AssetImage('assets/images/afriPizza.png'),
                            alignment: Alignment.bottomCenter,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30, bottom: 30, top: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(
                        children: <Widget>[
                          Textfield(
                            hideText: false,
                            labelText: 'email',
                            textController: emailTextController,
                            hintText: '',
                          ),
                          Textfield(
                            hideText: true,
                            labelText: 'password',
                            textController: passwordTextController,
                            hintText: '',
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child:
                      const LoginCustomizedButton(buttonText: 'Log In'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const LoginCustomizedButton(buttonText: 'Sign Up'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Text(
                        "Forgot Password? Click here",
                        style: TextStyle(
                            color: darkPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
