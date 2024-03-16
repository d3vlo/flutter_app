import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> cate = [
      {'name': 'Agriculture', 'img': 'arg.jpg'},
      {'name': 'automobiles', 'img': '4.png'},
      {'name': 'Baby Care', 'img': '6.jpg'},
      {'name': 'Beautifull', 'img': '5.jpg'},
      {'name': 'book', 'img': '4.png'},
      {'name': 'Electronics', 'img': '6.jpg'},
      {'name': 'Energy', 'img': '4.png'}
    ];
    List<dynamic> service = [
      {'name': 'Book Flight', 'img': 'book.jpg'},
      {'name': 'Jio', 'img': 'jio.jpg'},
      {'name': 'Order Food', 'img': 'food.jpg'},
      {'name': 'Pay Bills', 'img': 'bill.png'},
    ];
    List<dynamic> OCs = [
      {'img': 'oc1.png'},
      {'img': 'oc2.png'},
      {'img': 'oc3.png'},
      {'img': 'oc1.png'},
      {'img': 'oc2.png'},
      {'img': 'oc3.png'},
    ];
    List<dynamic> rent = [
      {'name': 'Rent Cloth', 'img': 'r1.jpg'},
      {'name': 'Rent Furniture', 'img': 'r2.webp'},
      {'name': 'Rent Appliance', 'img': 'r3.jpg'},
      {'name': 'Rent Cloth', 'img': 'r1.jpg'},
      {'name': 'Rent Furniture', 'img': 'r2.webp'},
      {'name': 'Rent Applianc', 'img': 'r3.jpg'},
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 70,
        leading: Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1607346256330-dee7af15f7c5?q=80&w=1812&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ),
        ),
        title: Image.asset(
          'assets/images/Logo.png',
          scale: 3,
        ),
        centerTitle: true,
        actions: [
          Stack(children: [
            Container(
              height: 50,
              width: 50,

              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              // border: Border.all(color: Colors.grey, width: 2),

              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.grey,
              ),
            ),
            Positioned(
                right: 24,
                top: 2,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 36, 75, 38)),
                ))
          ])
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 60,
                    width: 380,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.search_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 220,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Search for a Restourent',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                          Icon(
                            Icons.qr_code_scanner_rounded,
                            color: Colors.black45,
                          ),
                          Icon(
                            Icons.mic_none_sharp,
                            color: Colors.black45,
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/images/banner.jpg')),
                    Container(
                      width: 340,
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        'View all',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: cate.map((item) {
                          return Container(
                            margin: EdgeInsets.only(right: 14),
                            child: Column(
                              children: [
                                Container(
                                    height: 50,
                                    width: 60,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: Image.asset(
                                        'assets/images/' + item['img'],
                                      ),
                                    )),
                                Text(
                                  item['name'],
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/images/doc.jpg')),
                    Container(
                      width: 130,
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Talk to doctor Instantly',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 90,
                  width: 390,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: service.map((item) {
                      return Container(
                        margin: EdgeInsets.only(right: 14),
                        child: Column(
                          children: [
                            Stack(children: [
                              Container(
                                  height: 72,
                                  width: 76,
                                  child: Image.asset(
                                    'assets/images/' + item['img'],
                                  )),
                              Positioned(
                                left: 6,
                                bottom: 6,
                                child: Text(
                                  item['name'],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/OC.jpg'),
                        Text(
                          'View All',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      height: 90,
                      width: 390,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: OCs.map((item) {
                          return Container(
                            margin: EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                      height: 90,
                                      width: 120,
                                      child: Image.asset(
                                        'assets/images/' + item['img'],
                                      )),
                                ]),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Automobile',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 110,
                            width: 170,
                            child: Stack(children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child:
                                      Image.asset('assets/images/car4.webp')),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                child: Text(
                                  'New Car',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              )
                            ])),
                        Container(
                            height: 110,
                            width: 170,
                            child: Stack(children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child:
                                      Image.asset('assets/images/car4.webp')),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                child: Text(
                                  'Used Car',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              )
                            ])),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 110,
                            width: 170,
                            child: Stack(children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset('assets/images/ev.jpg')),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                child: Text(
                                  'EV Scooter',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              )
                            ])),
                        Container(
                            height: 110,
                            width: 170,
                            child: Stack(children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child:
                                      Image.asset('assets/images/bike3.png')),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                child: Text(
                                  'Bike',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              )
                            ])),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rent & Hire',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 140,
                      width: 390,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: rent.map((item) {
                          return Container(
                            margin: EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                Container(
                                    height: 120,
                                    width: 120,
                                    child: Image.asset(
                                      'assets/images/' + item['img'],
                                    )),
                                Text(
                                  item['name'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
