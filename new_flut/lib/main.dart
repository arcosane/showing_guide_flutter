import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:new_flut/buttf.dart';
import 'package:new_flut/button.dart';
import 'package:new_flut/kry.dart';
import 'package:new_flut/note.dart';
import 'package:new_flut/phone.dart';
import 'package:new_flut/poperty_his.dart';
import 'package:new_flut/property.dart';
import 'package:new_flut/some1.dart';
import 'package:new_flut/somw2.dart';
import 'package:new_flut/switch.dart';

void main() {
  runApp(const App());
}

void back () {}

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showingGuide(),
    );
  }
}
class showingGuide extends StatefulWidget {
  const showingGuide({Key? key}) : super(key: key);

  @override
  State<showingGuide> createState() => _showingGuideState();
}

class _showingGuideState extends State<showingGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body:Container(
        child: Center(child:ListView(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Carousel(
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.grey.shade100,
                dotBgColor: Colors.transparent,
                dotVerticalPadding: 5.0,
                dotPosition: DotPosition.bottomRight,
                images: [
                  Image.asset('images/img1.jpg', fit: BoxFit.cover,),
                  Image.asset('images/img2.jpg', fit: BoxFit.cover,),
                  Image.asset('images/img3.jpg', fit: BoxFit.cover,),
                  Image.asset('images/img4.jpg', fit: BoxFit.cover,),
                ],
              ),
            ),
            MyButtonF(onTap: back,),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('MLS#: E5579076',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text('Listed for:'),
                  SizedBox(width: 4),
                  Text("\$1,549,586",
                    style: TextStyle(color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MapF(onTap: back),
                SizedBox(width: 10),
                MapF1(onTap: back,),
              ],
            ),
            SizedBox(height: 25),
            MyWidget(),
            SizedBox(height: 25),
            PropertyDetailsWidget(),
            KeyFacts(),
            PropertyHistoryWidget(),
            Df(),
            PoiP(),
            MyNotesScreen(),
            ListingAgentWidget(),


          ],
        ),
        ),
      ),
    );
  }
}
