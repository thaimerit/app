import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:thaimerit/screens/module/packageonline/packageonlineDetail.dart';

class PackageOnlineScreen extends StatefulWidget {
  const PackageOnlineScreen({Key? key}) : super(key: key);

  @override
  State<PackageOnlineScreen> createState() => _PackageOnlineScreenState();
}

class _PackageOnlineScreenState extends State<PackageOnlineScreen> {
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

  List<Map<dynamic, dynamic>> popularBoon = [
    {
      "logo": "assets/popular/popular-boon-1.png",
      "title": "ขอพร พระพิฆเนศ หน้าศูนย์การค้าเซ็นทรัลเวิล์ด",
      "price": 299
    },
    {
      "logo": "assets/popular/popular-boon-2.png",
      "title": "แก้ชง วัดกังหันลม",
      "price": 699
    },
    {
      "logo": "assets/popular/popular-boon-3.png",
      "title": "ขอพร ท้าวเวสสุวรรณ วัดจุฬามณี",
      "price": 299
    }
  ];

  List<Map<dynamic, dynamic>> packagePatai = [
    {
      "logo": "assets/popular/package-patai-1.png",
      "title": "ถวายสังฆทาน วัดระฆัง",
      "price": 299
    },
    {
      "logo": "assets/popular/package-patai-2.png",
      "title": "ถวายผ้าไตร วัดไตรมิตรฯ",
      "price": 699
    },
    {
      "logo": "assets/popular/package-patai-3.png",
      "title": "ถวายสังฆทานและผ้าไตร วัดไตรมิตรฯ",
      "price": 299
    }
  ];

  List<Map<dynamic, dynamic>> packageGachong = [
    {
      "logo": "assets/popular/package-kachong-1.png",
      "title": "แก้ชง วัดเล่งเน่ยยี่",
      "price": 299
    },
    {
      "logo": "assets/popular/package-kachong-2.png",
      "title": "แก้ชง วัดกังหันลม",
      "price": 699
    },
    {
      "logo": "assets/popular/package-kachong-3.png",
      "title": "แก้ชง วัดโพธิ์แมนคุณารา",
      "price": 299
    }
  ];

  List<Map<dynamic, dynamic>> packageTukbat = [
    {
      "logo": "assets/popular/package-tukbat-1.png",
      "title": "ทำบุญตักบาตร วัดช่องลม",
      "price": 99
    },
    {
      "logo": "assets/popular/package-tukbat-2.png",
      "title": "ทำบุญตักบาตร วัดระฆัง",
      "price": 99
    },
    {
      "logo": "assets/popular/package-tukbat-3.png",
      "title": "ทำบุญตักบาตร วัดบวรฯ",
      "price": 99
    }
  ];

  Widget packageList(List package) {
    return Container(
        height: 270,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PackageOnlineDetail()));
                },
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
                            package[index]['logo'],
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
                          package[index]['title'],
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15, overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          "ราคา ${package[index]['price'].toString()} บาท / ชุด",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ));
          },
          itemCount: package.length,
          scrollDirection: Axis.horizontal,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 5,
          bottomOpacity: 0.1,
          backgroundColor: Colors.white,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0XFF4D4D4D),
                  ))),
          titleSpacing: 10,
          title: Container(
              width: width - 120,
              // padding: EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 56,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.min,
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
        body: ListView(
          padding: EdgeInsets.only(top: 20),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          // padding: EdgeInsets.only(left: 20, right: 20, top: 60),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "แพ็กเกจทำบุญออนไลน์",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 18),
                ),
                Text(
                  "แนะนำสำหรับคุณวันนี้",
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
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
                  packageList(popularBoon)
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
                    "แพ็กเกจถวายสังฆทานและผ้าไตร",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  packageList(packagePatai)
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
                    "แพ็กเกจแก้ชง สะเดาะเคราะห์",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  packageList(packageGachong)
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
                    "แพ็กเกจทำบุญตักบาตร",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  packageList(packageTukbat)
                ],
              ),
            ),
            Divider(
              color: Color(0xFFF4F4F4),
              thickness: 5,
            ),
          ],
        ));
  }
}
