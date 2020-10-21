import 'package:flutter/material.dart';
import 'package:yomari/Components/carousel_container.dart';

class All extends StatelessWidget {
  Widget _midItem({@required Widget child}) {
    return Container(
        height: 120,
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              child: child,
            )
          ],
        ));
  }

  Widget _itemCard({@required Object pin, @required String title}) {
    return Container(
      height: 120,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 25,
                width: 50,
                padding: EdgeInsets.only(bottom: 2, right: 1),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFDC143C),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  pin,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }

  Widget _trendingCard({@required Object pin, @required String title}) {
    return Container(
      height: 120,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 25,
                width: 50,
                padding: EdgeInsets.only(bottom: 2, right: 1),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFDC143C),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  pin,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }

  Widget _newreleaseCard({@required Object pin, @required String title}) {
    return Container(
      height: 120,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 25,
                width: 50,
                padding: EdgeInsets.only(bottom: 2, right: 1),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFDC143C),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  pin,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: CarouselContainer(),
          ),
          Row(
            children: [
              _midItem(
                  child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/icons/categories.png'),
                        )),
                      ),
                    ),
                    Text('All'),
                    Text('Categories'),
                  ],
                ),
              )),
              _midItem(
                  child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/icons/postad.png'),
                        )),
                      ),
                    ),
                    Text('Post'),
                    Text('Advertisement'),
                  ],
                ),
              )),
              _midItem(
                  child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/icons/myad.png'),
                        )),
                      ),
                    ),
                    Text('My'),
                    Text('Advertisement'),
                  ],
                ),
              ))
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFDC143C),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: Center(
                        child: Text(
                          "DASHAIN TIHAR 2020",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text(
                      "Gajjab Ko Aanubhav",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            _itemCard(
                              pin: "Off 5%",
                              title: 'OnePlus 8T',
                            ),
                            _itemCard(
                              pin: "Off 50%",
                              title: 'Gaming Chair',
                            ),
                            _itemCard(
                              pin: "Off 90%",
                              title: 'PUBG 50k UC',
                            ),
                            _itemCard(
                              pin: "Off 60%",
                              title: 'Gaming Chair',
                            ),
                            _itemCard(
                              pin: "Off 50%",
                              title: 'FIFA 21',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFDC143C),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: Center(
                        child: Text(
                          "TRENDING ITEMS",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            _trendingCard(
                              pin: "Off 5%",
                              title: 'OnePlus 8T',
                            ),
                            _trendingCard(
                              pin: "Off 50%",
                              title: 'Gaming Chair',
                            ),
                            _trendingCard(
                              pin: "Off 90%",
                              title: 'PUBG 50k UC',
                            ),
                            _itemCard(
                              pin: "Off 60%",
                              title: 'Gaming Chair',
                            ),
                            _trendingCard(
                              pin: "Off 50%",
                              title: 'FIFA 21',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFDC143C),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: Center(
                        child: Text(
                          "NEW RELEASES",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            _newreleaseCard(
                              pin: "Off 5%",
                              title: 'OnePlus 8T',
                            ),
                            _newreleaseCard(
                              pin: "Off 50%",
                              title: 'Gaming Chair',
                            ),
                            _newreleaseCard(
                              pin: "Off 90%",
                              title: 'PUBG 50k UC',
                            ),
                            _newreleaseCard(
                              pin: "Off 60%",
                              title: 'Gaming Chair',
                            ),
                            _newreleaseCard(
                              pin: "Off 50%",
                              title: 'FIFA 21',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
