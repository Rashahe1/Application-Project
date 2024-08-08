import 'package:flutter/material.dart';

import '../screen/home_screen.dart';


class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("assets/logo.png"),
          SizedBox(
            height: 100,
          ),
          Text(
            "!اطلب الان",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 220, 175, 69),
                fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "منخصصين بالمجال الرياضي",
              style: TextStyle(fontSize: 18, color: Color.fromARGB(224, 218, 186, 186)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 220, 175, 69),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "اضغط هنا",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

