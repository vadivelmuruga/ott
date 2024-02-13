import 'package:flutter/material.dart';
import 'package:ott/homeott.dart';
class valid extends StatefulWidget {
  const valid({super.key});

  @override
  State<valid> createState() => _validState();
}

class _validState extends State<valid> {
  final _key =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Form(
          key: _key,
          child: Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/disney1.jpg"),
                  fit: BoxFit.fill),
            ),child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              Container(
                height: MediaQuery.of(context).size.height*0.10,
                width: MediaQuery.of(context).size.width*0.80,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 15),
                      hintText: "Enter Your Name",
                      hintStyle: TextStyle(color: Colors.green),
                      labelText: "Name",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.white),
                      prefixIcon: Icon(Icons.mail,color: Colors.black,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (email)
                    {
                      if(email == null || email.isEmpty)
                      {
                        return("Please Enter Name");
                      }
                    }
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Container(
                height: MediaQuery.of(context).size.height*0.10,
                width: MediaQuery.of(context).size.width*0.80,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 15),
                      hintText: "Enter Your Password",
                      hintStyle: TextStyle(color: Colors.green),
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.white),
                      prefixIcon: Icon(Icons.password,color: Colors.black,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (password)
                    {
                      if(password == null || password.isEmpty || password.length>6)
                      {
                        return("Please Enter Vaild Password");
                      }
                    }
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              ElevatedButton(onPressed: (){
                if(_key.currentState!.validate()){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> home())
                  );
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text("oh")));
                }
              },
                  child: Text("Login",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,color: Colors.black),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
              ),),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
