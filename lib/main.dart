import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hide = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
body: Stack(
  children: [
    
    Container(

      margin: EdgeInsets.only(top: 400),
      width: double.infinity,
      height:450 ,

      decoration: BoxDecoration(

        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
        
      ),
    ),

    Container(
      padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
      margin: EdgeInsets.only(top: 200,left: 50,right: 50),

      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius:BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 0.1,
            blurRadius: 5
          ),

        ]
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: "  Wallet Name ",
                prefixIcon: Icon(Icons.wallet_sharp),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ),
          ),
          SizedBox(height: 25,),
          TextField(
            obscureText: hide,
            decoration: InputDecoration(
                hintText: " Wallet ID ",
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      hide = !hide;
                    });
                  },
                  icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility),
                ),
                prefixIcon: Icon(Icons.lock_open_rounded),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){},child: Text("Forget ?")
            ),
          ),
          ElevatedButton(
              style:TextButton.styleFrom(
               backgroundColor: Colors.deepPurpleAccent,
                padding: EdgeInsets.symmetric(horizontal: 100),
              ),
        onPressed: (){},
              child: Text("Enter")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have a Wallet Account "),
              TextButton(onPressed: (){}, child: Text("Wallet ? "))
            ],
          )
        ],
      ),
    ),

    Positioned(
      top: 70,
        left:55,

      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        Text("Sea Cloud " ,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              fontSize: 40
            )
        ),

        Text("Access to your account " ,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20
            )
        )
      ],

      )
    )
  ],
),
    );
  }
}
