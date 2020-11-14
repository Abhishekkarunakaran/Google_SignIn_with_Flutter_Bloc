import 'package:firbase_demo_app/pages/initial_page.dart';
import 'package:firbase_demo_app/pages/signed_in_page.dart';
import 'package:firbase_demo_app/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FireBase Flutter',
      theme: ThemeData.dark(),
      home: BlocProvider<SignInBloc>(
          create: (context) => SignInBloc(),
          child: Homepage()),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Sign in'),
        centerTitle: true,
      ),
      body: BlocBuilder<SignInBloc, States>(
        // ignore: missing_return
        builder: (context, state) {
          if (state is InitialState) {
            return InitialPage();
          }
          else if(state is SignInState){
            return SignedInPage(
              name: name,
              email: email,
              imageUrl: imageUrl,
            );
          }
          else if(state is LoadingState){
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            );
          }
        },
      ),
    );
  }
}
