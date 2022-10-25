import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_proj/detail_hotel_screen.dart';
import 'package:travel_proj/detail_ppob_screen.dart';
import 'package:travel_proj/detail_travel_screen.dart';
import 'package:travel_proj/detail_trip_screen.dart';
import 'package:travel_proj/util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/banner_1.png",
    "assets/banner_2.png",
    "assets/banner_1.png",
    "assets/banner_2.png"
  ];

  List<String> imagesDestinasi = [
    "assets/ic_menu_bali.png",
    "assets/ic_menu_karimun.png",
    "assets/ic_menu_lombok.png",
    "assets/ic_menu_yogyakarta.png",
    "assets/ic_menu_sukabumi.png",
    "assets/ic_kategori_bandung.png"
  ];

  int _currentIndex = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 70,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  elevation: 3,
                  color: Color(0xff1C4C77),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/ic_foto_profile.png",
                              width: 60,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ferry Sanjaya",
                                  style: TextStyle(color: Colors.white),
                                ),
                                // SizedBox(
                                //   height: 8,
                                // ),
                                Text("085720004991",
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 28,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 15,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 80,
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                              color: Color(0xff1C4C77),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/ic_piknikin_putih.png",
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              CarouselSlider(
                  options: CarouselOptions(
                      height: 150,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                  items: List.generate(
                    images.length,
                    (index) => Image.asset(
                      images[index],
                      gaplessPlayback: true,
                      fit: BoxFit.fill,
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(images, (index, url) {
                  return Container(
                    width: _currentIndex == index ? 15 : 15.0,
                    height: 5.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5),
                      color: _currentIndex == index
                          ? primaryColor
                          : Colors.grey.withOpacity(0.3),
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailPPOBScreen()));
                    },
                    child: Column(
                      children: [
                        Image.asset("assets/ic_ppob.png", width: 50),
                        SizedBox(
                          height: 4,
                        ),
                        Text("PPOB")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailTripScreen()));
                    },
                    child: Column(
                      children: [
                        Image.asset("assets/ic_open_trip.png", width: 50),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Open Trip")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailHotelScreen()));
                    },
                    child: Column(
                      children: [
                        Image.asset("assets/ic_hotel.png", width: 50),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Hotel")
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset("assets/ic_tiket.png", width: 50),
                      SizedBox(
                        height: 4,
                      ),
                      Text("Tiket")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/ic_pemandu.png", width: 50),
                      SizedBox(
                        height: 4,
                      ),
                      Text("Pemandu")
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jelajahi Destinasi Favorit",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lihat Lainnya",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 140,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 0,
                      crossAxisCount: 3,
                      childAspectRatio: 2 / 1,
                    ),
                    itemCount: imagesDestinasi.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(imagesDestinasi[index]),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Paket Travel Murah",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lihat Lainnya",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 250,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const DetailTravelScreen()));
                      },
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10.0)),
                                  child: Image.asset(
                                    "assets/banner_trip1.jpeg",
                                    width: 250,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Rp. 1.000.000",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right,
                                        color: primaryColor.withOpacity(0.8),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 40,
                              child: Container(
                                height: 60,
                                width: 250,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.white70, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Karimun Jawa Private Trip Minimum 4 Orang | 3 Hari 2 Malam",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const DetailTravelScreen()));
                      },
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10.0)),
                                  child: Image.asset(
                                    "assets/banner_trip2.jpeg",
                                    width: 250,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Rp. 2.000.000",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right,
                                        color: primaryColor.withOpacity(0.8),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 40,
                              child: Container(
                                height: 60,
                                width: 250,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.white70, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Sumedang Jawa Private Trip Minimum 4 Orang | 3 Hari 2 Malam",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
