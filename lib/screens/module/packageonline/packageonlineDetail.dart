import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PackageOnlineDetail extends StatefulWidget {
  const PackageOnlineDetail({Key? key}) : super(key: key);

  @override
  State<PackageOnlineDetail> createState() => _PackageOnlineDetailState();
}

class _PackageOnlineDetailState extends State<PackageOnlineDetail> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<String> listImageDetail = [
    "assets/popular/package-detail-thumb-1.png",
    "assets/popular/package-detail-thumb-2.png",
    "assets/popular/package-detail-thumb-3.png"
  ];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        persistentFooterButtons: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "299 บาท",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 50, minWidth: 120),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "จองทำบุญ",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: StadiumBorder(),
                          primary: Theme.of(context).primaryColor),
                    ))
              ],
            ),
          )
        ],
        extendBodyBehindAppBar: false,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              pinned: false,
              expandedHeight: 230,
              // leadingWidth: 80,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(children: [
                  Positioned(
                      child: CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                        height: height,
                        // aspectRatio: 4 / 3,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }
                        // autoPlay: false,
                        ),
                    items: listImageDetail
                        .map((item) => Container(
                            height: double.infinity,
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: 1000,
                            )))
                        .toList(),
                  )),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                listImageDetail.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () =>
                                    _controller.animateToPage(entry.key),
                                child: Container(
                                  width: 9.0,
                                  height: 9.0,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.white)
                                          .withOpacity(_current == entry.key
                                              ? 0.9
                                              : 0.4)),
                                ),
                              );
                            }).toList(),
                          ))),
                ]),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                            child: Text(
                          "ทำบุญแก้ชง 2565 วัดเล่งเน่ยยี่ กรุงเทพฯ",
                          style: TextStyle(fontSize: 24),
                        )),
                        SizedBox(
                          height: 16,
                        ),
                        Text("วัดเล่งเน่ยยี่ • กรุงเทพฯ",
                            style: TextStyle(fontSize: 20)),
                        Text(
                          "แพ็กเกจทำบุญขอพร",
                          style:
                              TextStyle(color: Color(0xFF808080), fontSize: 15),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          color: Color(0xFFF4F4F4),
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "รายละเอียดแพ็กเกจ",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 23),
                        ),
                        Text("ของไหว้สำหรับแก้ชง มีดังนี้",
                            style: TextStyle(fontSize: 16)),
                        Html(
                            data:
                                """<p>1. หงิ่งเตี๋ย 12 คู่ (บางปีมีเดือนจีนทางจันทรคติ 13 เดือน ก็ต้องใช้ 13 คู่)</p>

<p>2. กระทงตั่วกิม 1 กระทง : ลักษณะเป็นกระทง มีกระดาษทอง (ตั่วกิม) พับเป็นก้อนทองเรียงเป็นวงกลมอยู่ในกระทง</p>

<p>3. น้ำมันเติมตะเกียง 1 ขวด</p>

<p>4.เ ทียนแดง 1 คู่</p>

<p>5.&nbsp;ธูป 3 ดอก</p>

<p>6.&nbsp;อั่งเถียบ (เทียบแดง) กระดาษสีแดง สำหรับเขียนชื่อ วันเดือนปีเกิด (สามารถหาซื้อได้ที่วัดจีน และศาลเจ้า)</p>

<p>7.&nbsp;ขนมจันอับ (งาตัด,ถั่วตัด,ฟักเชื่อม,ข้าวพอง,ถั่วเคลือบสีขาวสีชมพู) 1 ถุง</p>

<p>8. ส้มมงคล (ไต้กิก) 1 จาน (4-5 ผล) ไหว้เสร็จแล้วนำกลับบ้านไปรับประทาน เพื่อเป็นมงคล</p>""",
                            shrinkWrap: true,
                            style: {
                              "body": Style(
                                  // padding: EdgeInsets.zero,
                                  margin: EdgeInsets.zero)
                            }),
                        Text(
                          "หมายเหตุ",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        Text(
                            "ของถวายอาจจะมีการปรับเปลี่ยนรูปแบบ โดยที่มูลค่ายังคงเดิม ทางเราขอสงวนสิทธิ์ในการเปลี่ยนแปลงโดยไม่ต้องแจ้งให้ทราบล่วงหน้า")
                      ]),
                )
              ]),
            )
          ],
        )

        // ListView(padding: EdgeInsets.zero, children: [

        // ]),
        );
  }
}
