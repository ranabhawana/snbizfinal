import 'package:flutter/material.dart';
import 'page.dart';

class LoginPage extends StatefulWidget{
        @override
        State createState()=> new LoginPageState();
    }
    class LoginPageState extends State<LoginPage> {

     
      bool _obscureText = true;
       String _password;

 
        void _toggle() {
         setState(() {
            _obscureText = !_obscureText;
            });
        }
       
      
          @override
          Widget build(BuildContext context) {
            return Scaffold(  
              body: SingleChildScrollView(
                child: Container(
                 // padding: const EdgeInsets.all(8.0),
                  height: 740.0,
                  decoration:new BoxDecoration(
                    gradient: new LinearGradient(colors:[
                      const Color(0xFF1500ff),
                      const Color(0xFFA551F8),
                    ],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    stops: [0.0,100.0],
                    ),
                    ),
                  
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       

                         Column(
                           // mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                            new Image(
                            image: new AssetImage("assets/logo.jpg"),
                            height: 170.0,
                            width: 220.0,
                      ),
                         Padding(
                         padding: EdgeInsets.only(top: 10.0),

                    ),
                        Text(
                          "SN Business Solutions", 
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 15.0
                          ),
                        ),
                         Text
                          ("Pvt. Ltd",
                            style: TextStyle(
                            fontWeight:FontWeight.w400,
                            color: Colors.white,
                            fontSize: 15.0
                         ),
                         ),
                       
                        
                        
                         new Container(
                           margin: EdgeInsets.all(30.0),
                           padding: EdgeInsets.all(50.0),
                          height: 320.0,
                          width: 500.0,
                          //color: Colors.grey[300],
                          decoration: new BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: new BorderRadius.all(Radius.circular(10.0),)
                         
                                  
                           ),

                        child: new Column(
                        children: <Widget>[
                         
                             
                        SizedBox(
                          height: 15,
                          ),
                          TextFormField(

                          
                         decoration: InputDecoration(
                            labelText: 'Enter Username',
                            prefixIcon: const Icon(Icons.email, color: Colors.lightBlue, size: 20.0,),
                            
                            
                          ),
                  

                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            

                            
                            decoration: InputDecoration(
                             

                            labelText: 'Enter Password',
                            prefixIcon: const Icon(Icons.lock, color: Colors.lightBlue, size: 20.0),
                            suffixIcon: new GestureDetector(
                             child: new FlatButton(
                            onPressed: _toggle,
                            child: new Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                          ),
                            )
                           ),
                         // validator: (val) => val.length < 6 ? 'password short' : null,
                          onSaved: (val) => _password = val,
                          obscureText: _obscureText,

                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.0),
                          ),
                          SizedBox(
                           
                          width: 100.0,
                          height: 40.0,
                          child: FlatButton(
                                color: Colors.blue,
                                textColor: Colors.white,
                                disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(9.0),
                                  splashColor: Colors.blueAccent,
                                  shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                                              
                                                        
                                   onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage())
                                                );
                                   },
                                   
                                              child: Text("Sign in", 
                                              style: TextStyle(color: Colors.white)),
                                                                      
                                                                           
                                                                           ),
                                                                 ),
                                                                 
                                                               
                                                                 ],
                                                               ) 
                                       
                                                              
                                                                )
                                                                  ],
                                       
                                                           ),
                                                           
                                                             ],
                                                       ),
                                                     
                                                     ),
                                                       
                                                     ),
                                                   );
                                                     
                                                   
                                       
                                       }
                                       }
                                      




