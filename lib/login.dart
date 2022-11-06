import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled14/drawer.dart';

class signIn extends StatefulWidget{
  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
TextEditingController email=new TextEditingController();
TextEditingController pass=new TextEditingController();

  bool value=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 40,top: 12),
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 90,top: 15),
          child: Text("Sign Up",style: TextStyle(color: Colors.grey),),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Text("Register Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              SizedBox(height: 35,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 5),
                child: Text("Complete your details or continue",style: TextStyle(fontSize: 15,color: Colors.grey),),
              ),
              Text("With social media",style: TextStyle(fontSize: 15,color: Colors.grey),),
              SizedBox(height: 35 ,),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email",hintText: "Enter your email"
                    ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(23)),suffixIcon: Icon(Icons.email)
                )
                ,

              ),
              SizedBox(height: 30,),
              TextFormField(
                controller:pass ,
                decoration: InputDecoration(
                    labelText: "Password",hintText: "enter your Password"
                    ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(23)),suffixIcon: Icon(Icons.lock)
                )
                ,

              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Checkbox(
                    value: this.value,
                    onChanged: (bool? value) {
                      this.value = value!;
                    },
                  ),
                  Text("Remember me"),
                  SizedBox(width: 37,),
                  TextButton(onPressed: (){}, child:Text("Forgot Password ?"))
                ],
              ),
              SizedBox(height: 30
                ,),
              Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  draw(email: email.text,pass: pass.text,),));
                  }, child: Text("Continue",style: TextStyle(color: Colors.white),))),
              SizedBox(height: 90,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 4),
                child: Text("By continuing your confirm that you agree ",style: TextStyle(fontSize: 15,color: Colors.grey),),
              ),
              Text("with Term and condition",style: TextStyle(fontSize: 15,color: Colors.grey),),




            ],
          ),
        ),
      ),
    );

  }
}