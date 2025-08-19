import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Stack(
        children: [
          PageView.builder(
            itemCount: 3,
              itemBuilder: (context, index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network("https://cdn-icons-gif.flaticon.com/15576/15576195.gif",
                    height: 200),
                    Text("Exclusive Discounts",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, height: 1.25),textAlign: TextAlign.center,),
                    SizedBox(height: 20.0),
                    Text("Get the best deals on fresh groceries and daily discounts",
                      style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
                    SizedBox(height: 40.0),
                    ElevatedButton(onPressed: ()=>{},
                        child: Text("Next", style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300,50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                        )
                      ),
                    ),
                    SizedBox(height: 20.0)
                  ],
                );
              }
          )
        ],
      ),
    )
    );
  }
}
