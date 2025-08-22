import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                  color: Color(0xFF010131),
                borderRadius: BorderRadius.circular(2.0)
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("OTP",
                  style: GoogleFonts.lato(fontSize: 23, fontWeight: FontWeight.bold, color: Color(0xFF010131)),)
              ],
            ),
            SizedBox(height: 10.0),
            Directionality(textDirection: TextDirection.ltr,
                child: Pinput(
                  defaultPinTheme: PinTheme(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                     color: Colors.grey[350]
                    ),
                    width: 56,
                    height: 56
                  ),
                ),
            ),
            SizedBox(height: 15),
            ElevatedButton(onPressed: ()=>{},
                child: Text("Verify OTP",
                  style: GoogleFonts.lato(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF010131),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )

              )

            )
          ],
        ),
    );
  }
}
