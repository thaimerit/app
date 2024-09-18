import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:thaimerit/constant.dart';
import 'package:thaimerit/screens/module/packageonline/packageonline.dart';
import 'package:thaimerit/screens/module/siamsee.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _search = new TextEditingController();

  final List<Map> listModule = [
    {
      "title": "ทำบุญออนไลน์",
      "icon": "assets/icon-ทำบุญออนไลน์.png",
      "screen": const PackageOnlineScreen()
    },
    {
      "title": "เสี่ยงเซียมซี",
      "icon": "assets/icon-เสี่ยงเซียมซี.png",
      "screen": const SiamSeeScreen()
    },
    {
      "title": "เช่าวัตถุมงคล",
      "icon": "assets/icon-เช่าวัตถุมงคล.png",
      "screen": const SiamSeeScreen()
    },
    {
      "title": "บริจาคเงิน",
      "icon": "assets/icon-บริจาคเงิน.png",
      "screen": const SiamSeeScreen()
    }
  ];

  final List<Map<dynamic, dynamic>> listBanner = [
    {
      "banner": 'assets/banner/Banner-1.png',
      "thumbnail": {
        "image": "assets/banner/thumbnail-banner-1.png",
        "category": "แพ็กเกจทำบุญออนไลน์",
        "detail": "พระตรีมูรติ ประทานพร ความสำเร็จ"
      }
    },
    {
      "banner": 'assets/banner/Banner-2.png',
      "thumbnail": {
        "image": "assets/banner/thumbnail-banner-2.png",
        "category": "แพ็กเกจทำบุญออนไลน์",
        "detail": "ขอพรไหว้ ท้าวเวสสุวรรณ วัดจุฬามณี สมุทรสาคาร"
      }
    },
    {
      "banner": 'assets/banner/Banner-3.png',
      "thumbnail": {
        "image": "assets/banner/thumbnail-banner-3.png",
        "category": "แพ็กเกจทำบุญออนไลน์",
        "detail": "ถวายสังฆทาน เสริมบุญ วัดระฆัง กรุงเทพฯ"
      }
    },
  ];

  List<Map<dynamic, dynamic>> recommend = [
    {
      "logo": "assets/recommend/recommend-1.png",
      "title": "ขอพร  พระตรีมูรติ",
      "price": 499
    },
    {
      "logo": "assets/recommend/recommend-2.png",
      "title": "แก้ชง วัดกังหันลม",
      "price": 699
    },
    {
      "logo": "assets/recommend/recommend-3.png",
      "title": "แพ็จเกจ แก้ชง วัดโพธิ์แมนคุณาราม",
      "price": 299
    }
  ];

  List<Map<dynamic, dynamic>> history = [
    {
      "logo": "assets/history/history-1.png",
      "title": "ถวายสังฆทาน วัดระฆัง",
      "date": "15 พฤษภาคม 2565"
    },
    {
      "logo": "assets/history/history-2.png",
      "title": "ถวายผ้าไตร วัดไตรมิตรฯ",
      "date": "15 พฤษภาคม 2565"
    },
    {
      "logo": "assets/history/history-3.png",
      "title": "แพ็จเกจ ถวายผ้าไตร วัดไตรมิตรฯ",
      "date": "15 พฤษภาคม 2565"
    }
  ];

  List<Widget> imageSliders() {
    return listBanner
        .map((item) => Container(
              child: Container(
                // margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    // borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                  children: <Widget>[
                    Image.asset(item['banner'],
                        fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                    Positioned(
                      bottom: 25.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          child: Container(
                            height: 80,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    item['thumbnail']['image'],
                                    fit: BoxFit.cover,
                                    width: 70,
                                    height: 70,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['thumbnail']['category'],
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  Flexible(
                                      child: Text(
                                    item['thumbnail']['detail'],
                                    maxLines: 1,
                                    style: TextStyle(height: 1.5),
                                  ))
                                ],
                              ))
                            ]),
                          )),
                    ),
                  ],
                )),
              ),
            ))
        .toList();
  }

  List<Widget> moduleButton() {
    final double height = MediaQuery.of(context).size.height;
    return listModule
        .map((e) => InkWell(
              onTap: () {
                pushNewScreen(context, screen: e['screen'], withNavBar: false);
              },
              child: Column(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: Constant.moduleButtonColor,
                        shape: BoxShape.circle),
                    child: Image.asset(e['icon'], isAntiAlias: true),
                  ),
                  Text(
                    e['title'],
                    style: TextStyle(height: 1.8),
                  )
                ],
              ),
            ))
        .toList();
  }

  Widget packageList() {
    return Container(
        height: 270,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {},
                child: Container(
                  width: 170,
                  height: double.infinity,
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            recommend[index]['logo'],
                            fit: BoxFit.cover,
                            width: 170,
                            height: 180,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          "แพ็คเกจ",
                          style: TextStyle(color: Color(0xFF808080)),
                        ),
                        Text(
                          recommend[index]['title'],
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15, overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          "ราคา ${recommend[index]['price'].toString()} บาท / ชุด",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ));
          },
          itemCount: recommend.length,
          scrollDirection: Axis.horizontal,
        ));
  }

  Widget historyList() {
    return Container(
        height: 270,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {},
                child: Container(
                  width: 170,
                  height: double.infinity,
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            history[index]['logo'],
                            fit: BoxFit.cover,
                            width: 170,
                            height: 180,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          "แพ็คเกจ",
                          style: TextStyle(color: Color(0xFF808080)),
                        ),
                        Text(
                          recommend[index]['title'],
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15, overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          history[index]['date'],
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ));
          },
          itemCount: history.length,
          scrollDirection: Axis.horizontal,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
            return <Widget>[
              SliverPersistentHeader(
                delegate: MySliverAppBar(expandedHeight: 200, filter: _search),
                pinned: false,
              ),
            ];
          },
          body: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            // padding: EdgeInsets.only(left: 20, right: 20, top: 60),
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: moduleButton(),
                  )),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: height / 1.5,
                  // aspectRatio: 2.0,
                  viewportFraction: 1,
                  enlargeCenterPage: false,
                ),
                items: imageSliders(),
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(left: 20, right: 0, top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "แนะนำสำหรับคนเกิดวันอังคาร",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    packageList()
                  ],
                ),
              ),
              Divider(
                color: Color(0xFFF4F4F4),
                thickness: 5,
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(left: 20, right: 0, top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "รายการทำบุญออนไลน์ของคุณ",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    historyList()
                  ],
                ),
              ),
              Divider(
                color: Color(0xFFF4F4F4),
                thickness: 5,
              ),
              Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.only(left: 20, right: 0, top: 20, bottom: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "สีของคุณประจำวัน",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15),
                        ),
                        Text(
                          "สีนำโชควันนี้",
                          style: TextStyle(fontSize: 26),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          spacing: 15,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff000000)),
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 70,
                                  child: Text(
                                    "เสริมอำนาจวาสนา",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 70,
                                  child: Text(
                                    "เสริมโชคลาภเงินทอง",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff61CC7F)),
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 70,
                                  child: Text(
                                    "มีคนอุปภัมช่วยเหลือ",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "สีต้องห้ามวันนี้",
                          style: TextStyle(fontSize: 26),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          spacing: 15,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffC076DA)),
                                  child: Icon(Icons.done,
                                      color: Color(0xffC076DA)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 70,
                                  child: Text(
                                    "สีต้องห้ามสีม่วง",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFF59A4EA)),
                                  child: Icon(Icons.done,
                                      color: Color(0xFF59A4EA)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 70,
                                  child: Text(
                                    "สีต้องห้ามสีฟ้า",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ])),
              Divider(
                color: Color(0xFFF4F4F4),
                thickness: 5,
              ),
              Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.only(left: 20, right: 0, top: 20, bottom: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ทำนายดวงของคุณประจำวัน",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15),
                        ),
                        Text(
                          "คำทำนายดวง",
                          style: TextStyle(fontSize: 28),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 80,
                            child: Text(
                              "การทำความดีจะช่วยให้ทุกสมหวังในสิ่งที่คิดไว้ อะไรที่คาดหวังจะสมหวังแน่นอน รักใครก็ได้สมหวัง งานก็สมหวัง",
                              style: TextStyle(fontSize: 16),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                      ])),
              Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xffEC3B4A)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/luckyheng.png",
                              fit: BoxFit.contain,
                              height: 30,
                            ),
                            Image.asset(
                              "assets/centralworld.png",
                              fit: BoxFit.contain,
                              height: 30,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ]))
            ],
          )),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final TextEditingController filter;
  MySliverAppBar({required this.expandedHeight, required this.filter});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var searchBarOffset = expandedHeight - shrinkOffset - 35;
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      alignment: Alignment.center,
      // overflow: Overflow.visible,
      children: [
        Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Container(
                // height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "สวัสดี,",
                              style: TextStyle(
                                  fontSize: 23, color: Colors.white, height: 1),
                            ),
                            Text(
                              "มาริสา",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Container(
                          height: 85,
                          width: 85,
                          // margin: EdgeInsets.all(100.0),
                          child: Center(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    height: 1,
                                    color: Theme.of(context).accentColor),
                              ),
                              Text("แต้มบุญ")
                            ],
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 4,
                                  color: Theme.of(context).primaryColor),
                              color: Colors.white,
                              shape: BoxShape.circle),
                        )
                      ]),
                ))),
        // (shrinkOffset < expandedHeight - 20)
        //     ?
        Positioned(
          top: searchBarOffset,
          // left: MediaQuery.of(context).size.width / 7,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            elevation: 5,
            child: SizedBox(
              height: 65,
              width: MediaQuery.of(context).size.width - 50,
              child: CupertinoTextField(
                controller: filter,
                keyboardType: TextInputType.text,
                placeholder: 'ค้นหาสถานที่ศักดิ์สิทธิ์',
                placeholderStyle: TextStyle(
                    color: Color(0xff808080),
                    fontSize: 15.0,
                    fontFamily: 'Kanit'),
                prefix: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 5.0, 5.0, 5.0),
                  child: Icon(
                    Icons.search,
                    size: 25,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
        // : Container(
        //     margin: EdgeInsets.symmetric(
        //         horizontal: MediaQuery.of(context).size.width / 4,
        //         vertical: (kToolbarHeight - 40) / 4),
        //     child: Card(
        //       elevation: 10,
        //       child: CupertinoTextField(
        //         controller: filter,
        //         keyboardType: TextInputType.text,
        //         placeholder: 'Search',
        //         placeholderStyle: TextStyle(
        //           color: Color(0xffC4C6CC),
        //           fontSize: 14.0,
        //           fontFamily: 'Brutal',
        //         ),
        //         prefix: Padding(
        //           padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
        //           child: Icon(
        //             Icons.search,
        //             size: 18,
        //             color: Colors.black,
        //           ),
        //         ),
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(8.0),
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
