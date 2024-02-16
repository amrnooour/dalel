import 'package:dalel/core/functions/navigation.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){
       customNavigation(context, "/signup");
      }, icon: Icon(Icons.logout))],),
      body: Center(child: Text("sign in"),),
    );
  }
}
