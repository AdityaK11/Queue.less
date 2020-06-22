import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterFragment extends StatefulWidget {
  @override
  _RegisterFragmentState createState() => _RegisterFragmentState();
}

class _RegisterFragmentState extends State<RegisterFragment> {

  String email,password,confirmPass;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 22,),
          Text(
            'Create Account,',
            style: TextStyle(
                fontSize: 22
            ),
          ),
          SizedBox(height: 4,),
          Text(
            'Sign up to continue',
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
                      return 'Please enter Name';
                    }
                    return null;
                  },
                  //onSaved: (input) => email=input,
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    labelText: 'Name',
                    icon: const Icon(EvaIcons.personOutline),
                  ),
                ),
                TextFormField(
                  validator: (input){
                    if(input.isEmpty){
                      return 'Please enter Email address';
                    }
                    return null;
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
                  controller: _pass,
                  validator: (input){
                    if(input.length<6){
                      return 'Password should be atleast 6 letter long';
                    }
                    return null;
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
                TextFormField(
                  /*validator: (input){
                    if(input!=password){
                      return 'Passwords dont match';
                    }
                  },
                  onSaved: (input) => confirmPass=input,*/
                  controller: _confirmPass,
                  validator: (val){
                    if(val.isEmpty)
                      return 'Empty';
                    if(val != _pass.text)
                      return 'Passwords dont match';
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    labelText: 'Confirm Password',
                    icon: const Icon(EvaIcons.lockOutline),
                  ),
                ),
              ],
            ),
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
                  onPressed: (){signUp();},
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

  Future<void> signUp() async {
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        FirebaseAuth auth = FirebaseAuth.instance;

        AuthResult result = await auth.createUserWithEmailAndPassword(email: email, password: password);
        final FirebaseUser user = result.user;

        assert (user != null);
        assert (await user.getIdToken() != null);
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
