import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:thaimerit/constant.dart';

class GuestHomeScreen extends StatefulWidget {
  const GuestHomeScreen({Key? key}) : super(key: key);

  @override
  State<GuestHomeScreen> createState() => _GuestHomeScreenState();
}

class _GuestHomeScreenState extends State<GuestHomeScreen> {
  final List<Map> listModule = [
    {"title": "ทำบุญออนไลน์", "icon": "assets/icon-ทำบุญออนไลน์.png"},
    {"title": "เสี่ยงเซียมซี", "icon": "assets/icon-เสี่ยงเซียมซี.png"},
    {"title": "เช่าวัตถุมงคล", "icon": "assets/icon-เช่าวัตถุมงคล.png"},
    {"title": "บริจาคเงิน", "icon": "assets/icon-บริจาคเงิน.png"}
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

  List<Map<dynamic, dynamic>> popular = [
    {
      "logo": "assets/popular/popular-1.png",
      "title": "แก้บน พระพิฆเนศ",
      "price": 299
    },
    {
      "logo": "assets/popular/popular-2.png",
      "title": "แก้ชง วัดกังหันลม ",
      "price": 699
    },
    {
      "logo": "assets/popular/popular-3.png",
      "title": "แพ็จเกจ แก้ชง วัดโพธิ์แมนคุณาราม",
      "price": 299
    },
    {
      "logo": "assets/popular/popular-4.png",
      "title": "แพ็จเกจ แก้ชง วัดกัมโล่วยี่",
      "price": 199
    },
    {
      "logo": "assets/popular/popular-5.png",
      "title": "แพ็จเกจ แก้ชง ศาลเจ้าพ่อเสือ",
      "price": 299
    },
    {
      "logo": "assets/popular/popular-6.png",
      "title": "แพ็จเกจ แก้ชง ศาลเจ้าพ่อกวนอู",
      "price": 299
    },
  ];

  List<Map<dynamic, dynamic>> siamsee = [
    {"logo": "assets/siamsee/siamsee-1.png", "title": "วัดปากน้ำแขมหนู"},
    {"logo": "assets/siamsee/siamsee-2.png", "title": "สำนักสงฆ์เขาพระครู"},
    {
      "logo": "assets/siamsee/siamsee-3.png",
      "title": "วัดประยุรวงศาวาสวรวิหาร"
    },
    {"logo": "assets/siamsee/siamsee-4.png", "title": "วัดสุนทรธรรมทาน"},
    {"logo": "assets/siamsee/siamsee-5.png", "title": "วัดคณิกาผล"},
    {"logo": "assets/siamsee/siamsee-6.png", "title": "ศาลเจ้าพ่อครุฑ"},
  ];

  List<Map<dynamic, dynamic>> sacredPopular = [
    {
      "logo": "assets/sacred/sacred-1.png",
      "title": "เหรียญท้าวเวสสุวรรณ เนื้อผง ปี 55 เลี่ยมกรอบ",
      "price": 299
    },
    {
      "logo": "assets/sacred/sacred-2.png",
      "title": "หลวงพ่อปลดหนี้ ลอยองค์ รุ่นโชคดีเจริญโภคทรัพย์ เนื้อทองแดง",
      "price": 699
    },
    {
      "logo": "assets/sacred/sacred-3.png",
      "title":
          "เหรียญเจ้าสัว สมเด็จโต พรหมรังสี เนื้ออัลปาก้า พิมพ์เล็ก ปี 59 ",
      "price": 299
    },
    {
      "logo": "assets/sacred/sacred-4.png",
      "title": "พระขุนแผนผงพรายกุมาร หลวงปู่ทิม วัดละหารไร่",
      "price": 199
    },
    {
      "logo": "assets/sacred/sacred-5.png",
      "title": "สมเด็จนางพญาพระไพรีพินาศ สก.6 รอบ ปี 35 เนื้อผง พิมพ์เล็ก ",
      "price": 299
    },
  ];
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
                            popular[index]['logo'],
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
                          popular[index]['title'],
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15, overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          "ราคา ${popular[index]['price'].toString()} บาท / ชุด",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ));
          },
          itemCount: popular.length,
          scrollDirection: Axis.horizontal,
        ));
  }

  Widget sacredList() {
    return Container(
        height: 320,
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
                            sacredPopular[index]['logo'],
                            fit: BoxFit.cover,
                            width: 170,
                            height: 180,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          "เช่าวัตถุมงคล",
                          style: TextStyle(color: Color(0xFF808080)),
                        ),
                        Text(
                          sacredPopular[index]['title'],
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 15, overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          "ราคา ${sacredPopular[index]['price'].toString()} บาท / ชุด",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ));
          },
          itemCount: sacredPopular.length,
          scrollDirection: Axis.horizontal,
        ));
  }

  Widget siamseelist() {
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
                            siamsee[index]['logo'],
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
                          siamsee[index]['title'],
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15, overflow: TextOverflow.ellipsis),
                        ),
                      ]),
                ));
          },
          itemCount: siamsee.length,
          scrollDirection: Axis.horizontal,
        ));
  }

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
              onTap: () {},
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

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        bottomOpacity: 0.1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: InkWell(
                onTap: () {},
                child: Container(
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ค้นหาสถานที่",
                        style:
                            TextStyle(color: Color(0xff4D4D4D), fontSize: 17),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("|",
                          style: TextStyle(
                              color: Color(0xffC4C4C4), fontSize: 17)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "แพ็กเกจ",
                        style:
                            TextStyle(color: Color(0xff4D4D4D), fontSize: 17),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xffF4F4F4)),
                ))),
        toolbarHeight: 100,
      ),
      body: ListView(shrinkWrap: true, physics: BouncingScrollPhysics(),
          // padding: EdgeInsets.only(left: 20, right: 20, top: 60),
          children: [
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
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
              padding: EdgeInsets.only(left: 20, right: 0, top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "แพ็คเกจทำบุญขอพรยอดนิยม",
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
              padding: EdgeInsets.only(left: 20, right: 0, top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "เสี่ยงเซียมซีวัดดัง",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  siamseelist()
                ],
              ),
            ),
            Divider(
              color: Color(0xFFF4F4F4),
              thickness: 5,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 0, top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "วัตถุมงคลยอดนิยม",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  sacredList()
                ],
              ),
            ),
            Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xffE5E5E5)),
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
                            "assets/centralworld-guest.png",
                            fit: BoxFit.contain,
                            height: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ]))
          ]),
    );
  }
}
