import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController controller = PageController();
  int currentPageIndex=0;
  var onBoardingItemsList = [
    {"icon":"https://cdn-icons-gif.flaticon.com/18124/18124722.gif", "title":"Exclusive Discounts", "description": "Get the best deals on fresh groceries and daily discounts"},
    {"icon":"https://cdn-icons-gif.flaticon.com/11933/11933522.gif", "title":"Fast \n Delivery", "description": "Get the best deals on fresh groceries and daily discounts"},
    {"icon":"https://cdn-icons-gif.flaticon.com/18873/18873948.gif", "title":"Seamless Payments", "description": "Get the best deals on fresh groceries and daily discounts"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: SafeArea(
      child: Stack(
        children: [
          PageView.builder(
            controller: controller,
            physics: BouncingScrollPhysics(),
            itemCount: onBoardingItemsList.length,
              onPageChanged: (index){
              setState(() {
                currentPageIndex = index;
              });
              },
              itemBuilder: (context, index){
                return Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network("${onBoardingItemsList[index]["icon"]}",
                      height: 200),
                      Text("${onBoardingItemsList[index]["title"]}",
                      style: GoogleFonts.lato(fontSize: 50, fontWeight: FontWeight.bold, height: 1.25, color: Color(0xFF010131)),textAlign: TextAlign.center,),
                      SizedBox(height: 20.0),
                      Text("${onBoardingItemsList[index]["description"]}",
                        style: GoogleFonts.lato(fontSize: 20), textAlign: TextAlign.center),
                      SizedBox(height: 40.0),
                      ElevatedButton(onPressed: ()=>{
                        if(currentPageIndex < onBoardingItemsList.length -1){
                          controller.nextPage(duration: Duration(microseconds: 500), curve: Curves.easeInOut)
                        }
                      },
                          child: Text("Next", style: GoogleFonts.lato(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(300,50),
                          backgroundColor: Color(0xFF010131),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                          )
                        ),
                      ),
                      SizedBox(height: 30.0),
                      AnimatedSmoothIndicator(
                        count: onBoardingItemsList.length,
                        effect: SlideEffect(
                            dotHeight: 12,
                            dotWidth: 12,
                            dotColor: Colors.grey,
                          activeDotColor: Color(0xFF010131)
                        ), activeIndex: index,
                      )
                    ],
                  ),
                );
              }
          ),

        ],
      ),
    )
    );
  }
}
