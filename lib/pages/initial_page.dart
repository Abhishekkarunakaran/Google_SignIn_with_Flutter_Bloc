import 'package:firbase_demo_app/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  SignInBloc _signInBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _signInBloc = BlocProvider.of<SignInBloc>(context);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _signInBloc.close();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Sign In with Google',
              style: TextStyle(
                  fontSize: 30
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {
              //TODO: Add functionality
              _signInBloc.add(SignInButtonPressedEvent());
            },
            child: Container(
              height: 50,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height:40,
                      width: 40,
                      child: Image(image: AssetImage('assets/google.png'))),
                  Text('Sign in with Google')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
