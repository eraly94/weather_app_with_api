import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app_with_api/constants/week_days_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List<String> weekDaysList = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday"
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          "assets/svg/search.svg",
        ),
        title: SvgPicture.asset(
          "assets/svg/point.svg",
        ),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xff7DE8FF),
                Color(0xff16C4EA)
              ], // Change these colors as needed
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          SvgPicture.asset(
            "assets/svg/hamburger.svg",
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [Color(0xff7DE8FF), Color(0xff16C4EA)],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Container(
                width: 375,
                height: 140,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bishkek,\nKyrgyzstan",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 34.5,
                      ),
                    ),
                    Text(
                      "Tue, Jun 30",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.5,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 375,
              height: 152,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/cludy.svg",
                    width: 180,
                    height: 200,
                  ),
                  SvgPicture.asset(
                    "assets/svg/degree-holder.svg",
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: 320,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Color(0xff90caf9),
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/rain.svg",
                            ),
                            Text(
                              "RainFall",
                            ),
                          ],
                        ),
                        Text(
                          "3cm",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 320,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Color(0xff90caf9),
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/wind.svg",
                            ),
                            Text(
                              "Wind",
                            ),
                          ],
                        ),
                        Text(
                          "19km/h",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 320,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Color(0xff90caf9),
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/humidity.svg",
                            ),
                            Text(
                              "Humidity",
                            ),
                          ],
                        ),
                        Text(
                          "64%",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Tomorrow",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Next 14 Days"),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: weekDaysList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(34.5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13.8, horizontal: 6.9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weekDaysList[index].toString(),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/svg/sun.svg",
                          ),
                          Text(
                            "20",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
