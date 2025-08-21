import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text("Sign Up or Login",
          style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: mobileNumber,
                decoration: InputDecoration(
                  counterText: "",
                  hintText: "Enter Mobile Number",
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  filled: true,
                  fillColor: Colors.grey[100],
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
              SizedBox(height: 10.0),
              ElevatedButton(onPressed: ()=>{}, child: Text("Send OTP",
              style: GoogleFonts.lato(fontSize: 20, color: Colors.white, fontStyle: FontStyle.italic),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF010131),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
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
