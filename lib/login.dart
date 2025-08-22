import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_market_app/otp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mobileNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: [
          Container(
            height: 5,
            width: 30,
            decoration: BoxDecoration(
                color: Color(0xFF010131),
                borderRadius: BorderRadius.circular(2.0)
            ),
          ),
          SizedBox(height: 15),
         Row(
           children: [
             Text("Login / Sign Up",
               style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold),),
           ],
         ),
         SizedBox(height: 25.0),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Mobile Number*",
              style: GoogleFonts.lato(fontSize: 16, color: Color(0xFF010131)),),
              SizedBox(height: 10),
              TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: mobileNumber,
                decoration: InputDecoration(
                  counterText: "",
                label: Text("Enter Mobile Number",
                style: GoogleFonts.lato(fontSize: 20, color: Color(0xFF010131)),),
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  prefixIcon: Icon(Icons.phone_android),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xFF010131))
                  )
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(onPressed: ()=>{
                Navigator.pop(context),
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context){
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 16,
                          bottom: MediaQuery.of(context).viewInsets.bottom
                        ),
                        child: SingleChildScrollView(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                            child: OTP()
                        ),
                        ),
                      );
                    }
                )
              }, child: Text("Send OTP",
              style: GoogleFonts.lato(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF010131),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),

              )
            ],
          )
        ],
      ),
    );
  }
}
