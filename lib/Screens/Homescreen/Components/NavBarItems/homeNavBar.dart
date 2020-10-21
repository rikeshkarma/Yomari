import 'package:yomari/Screens/Homescreen/Components/TABS/allTAB.dart';
import 'package:yomari/Screens/Homescreen/Components/TABS/consumerelectronicsTAB.dart';
import 'package:yomari/Screens/Homescreen/Components/TABS/fashionTAB.dart';
import 'package:yomari/Screens/Homescreen/Components/TABS/sportsTAB.dart';
import 'package:yomari/Screens/Homescreen/Components/TABS/vehiclesTAB.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0.0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 7),
              child: Image.asset(
                'assets/icons/camera.png',
                scale: 0.2,
                width: 30,
              ),
            )
          ],
          title: Container(
            height: 37,
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.only(top: 4),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Gaming Chair",
                  prefixIcon: Container(
                    height: 3,
                    width: 3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            scale: 2.5,
                            image: AssetImage('assets/icons/search.png'))),
                  )),
            ),
          ),
          backgroundColor: Color(0xFFDC143C).withOpacity(0.9),
          bottom: TabBar(
              isScrollable: true,
              indicatorWeight: 5,
              indicatorColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent,
              ),
              tabs: [
                Tab(
                  child: Text(
                    "All",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Consumer Electronics",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Fashion Accessories",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Vehicles & Accessories",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Sports",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            All(),
            ConsumerElectronics(),
            Fashion(),
            Sports(),
            Vehicles(),
          ],
        ),
      ),
    );
  }
}
