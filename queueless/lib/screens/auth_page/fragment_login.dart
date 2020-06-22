import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginFragment extends StatefulWidget {
  @override
  _LoginFragmentState createState() => _LoginFragmentState();
}

class _LoginFragmentState extends State<LoginFragment> {

  String email,password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 22,),
          Text(
            'Welcome,',
            style: TextStyle(
                fontSize: 22
            ),
          ),
          SizedBox(height: 4,),
          Text(
            'Sign in to continue',
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 18
            ),
          ),
          SizedBox(height: 12,),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (input){
                    if(input.isEmpty){
                      return 'Please enter Email address';
                    }
                  },
                  onSaved: (input) => email=input,
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    labelText: 'Email',
                    icon: const Icon(EvaIcons.emailOutline),
                  ),
                ),
                TextFormField(
                  validator: (input){
                    if(input.length<6){
                      return 'Password should be atleast 6 letter long';
                    }
                  },
                  onSaved: (input) => password=input,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    labelText: 'Password',
                    icon: const Icon(EvaIcons.lockOutline),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Text(
              'Forgot Password?'
          ),
          SizedBox(height: 32,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/google.png',
                height: 48,
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    shape: BoxShape.circle
                ),
                child: IconButton(
                  onPressed: (){signIn();},
                  icon: Icon(
                    EvaIcons.arrowForwardOutline,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        FirebaseAuth auth = FirebaseAuth.instance;

        AuthResult result = await auth.signInWithEmailAndPassword(email: email, password: password);
        final FirebaseUser user = result.user;

        assert(user != null);
        assert(await user.getIdToken() != null);

        final FirebaseUser currentUser = await auth.currentUser();
        assert(user.uid == currentUser.uid);
        Navigator.of(context).pop(false);
        Navigator.pushNamed(context, '/home');
      }catch(e){
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return new AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              title: new Text(
                'Error',
              ),
              content: new Text(
                e.message,
              ),
              actions: <Widget>[
                new FlatButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: new Text(
                    'Ok',
                    style: TextStyle(
                        color: Colors.indigoAccent),
                  ),
                ),
              ],
            );
          },
        );
      }

    }

  }
}
