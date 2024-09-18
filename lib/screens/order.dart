import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<Map<dynamic, dynamic>> listOrder = [
    {
      "title": "ทำบุญแก้ชง 2565 วัดเล่งเน่ยยี่",
      "price": 639.86,
      "location": "กรุงเทพฯ",
      "qty": 1,
      "status": "รอการโอนเงิน"
    },
    {
      "title": "ขอพรท้าวเวสสุวรรณ",
      "price": 299.00,
      "location": "วัดจุฬามณี สมุทรสงคราม",
      "qty": 1,
      "status": "รอการโอนเงิน"
    },
    {
      "title": "ท้าวเวสสุวรรณ",
      "price": 299.00,
      "location": "วัดจุฬามณี สมุทรสงคราม",
      "qty": 2,
      "status": "รอการโอนเงิน"
    },
  ];

  Widget listBuild(String type) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(),
        itemCount: listOrder.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    listOrder[index]['title'],
                    style: TextStyle(color: Color(0xFF4D4D4D)),
                  ),
                  Text(listOrder[index]['price'].toString())
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    listOrder[index]['location'],
                    style: TextStyle(color: Color(0xFF4D4D4D)),
                  ),
                  Text("จำนวน " + listOrder[index]['qty'].toString())
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    type,
                    style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "ดูรายละเอียด",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Color(0xFFF4F4F4),
                thickness: 2,
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        bottomOpacity: 0.1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("รายการคำสั่งซื้อ",
            style: TextStyle(color: Color(0xff4D4D4D), fontSize: 24)),
        toolbarHeight: 100,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: DefaultTabController(
              length: 3,
              child: Column(children: <Widget>[
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Center(
                        child: ButtonsTabBar(
                      radius: 30,
                      backgroundColor: Theme.of(context).primaryColor,
                      // decoration: BoxDecoration(
                      //   shape: BoxShape.circle,
                      //   // borderRadius: BorderRadius.circular(10)
                      // ),

                      center: false,
                      height: 60,
                      buttonMargin: EdgeInsets.all(10),
                      borderWidth: 1,
                      borderColor: Theme.of(context).primaryColor,
                      unselectedBorderColor: Color(0xffC4C4C4),
                      contentPadding: EdgeInsets.all(10),
                      unselectedBackgroundColor: Colors.transparent,
                      unselectedLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontFamily: "Kanit",
                          fontSize: 14),
                      labelStyle: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Kanit",
                          fontSize: 14),
                      tabs: const [
                        Tab(
                          text: "รายการสั่งซื้อ",
                        ),
                        Tab(
                          text: "ชำระเงินสำเร็จ",
                        ),
                        Tab(
                          text: "รายการยกเลิก",
                        ),
                      ],
                    ))),
                const Divider(
                  color: Color(0xFFF4F4F4),
                  thickness: 3,
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      listBuild("รอการโอนเงิน"),
                      listBuild("ชำระเงินแล้ว"),
                      listBuild("ยกเลิกคำสั่งซื้อ"),
                    ],
                  ),
                )
              ]))),
    );
  }
}
