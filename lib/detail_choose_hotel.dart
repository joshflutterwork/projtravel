import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_proj/detail_choose_kamar.dart';
import 'package:travel_proj/util.dart';

class ImageModelHotel {
  String? image;

  ImageModelHotel({this.image});
}

class DetailChooseHotel extends StatefulWidget {
  const DetailChooseHotel({Key? key}) : super(key: key);

  @override
  State<DetailChooseHotel> createState() => _DetailChooseHotelState();
}

class _DetailChooseHotelState extends State<DetailChooseHotel> {
  List<String> images = [
    "assets/gambar_hotel_detail_2.png",
    "assets/gambar_hotel_detail_3.png",
    "assets/gambar_hotel_detail_4.png",
    "assets/gambar_hotel_detail_5.png"
  ];

  int _currentIndex = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    CarouselSlider(
                        options: CarouselOptions(
                            height: 250,
                            initialPage: _currentIndex,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            pauseAutoPlayOnTouch: true,
                            enlargeCenterPage: true,
                            viewportFraction: 0.8,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            }),
                        carouselController: buttonCarouselController,
                        items: List.generate(
                          images.length,
                          (index) => Image.asset(
                            images[index],
                            gaplessPlayback: true,
                            fit: BoxFit.fill,
                          ),
                        )),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: map<Widget>(images, (index2, url) {
                        return InkWell(
                          onTap: () async {
                            setState(() {
                              _currentIndex = index2;
                            });
                            buttonCarouselController.jumpToPage(index2);
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(5),
                              color: _currentIndex == index2
                                  ? primaryColor
                                  : Colors.grey.withOpacity(0.3),
                            ),
                            child: Card(
                              elevation: 10,
                              child: Image.asset(
                                images[index2],
                                fit: BoxFit.fill,
                                width: 100,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: primaryColor.withOpacity(0.8),
                            child: Icon(
                              Icons.arrow_back,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.more_horiz_sharp,
                            size: 34,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hotel Anugerah Sukabumi",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.share,
                    color: primaryColor,
                    size: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 2, color: primaryColor)),
                    child: Text(
                      "Hotel",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/ic_lokasi.png",
                    width: 20,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Sukabumi, Jawa Barat")
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, bottom: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/ic_kamar_1.png",
                        width: 20,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Fasilitas"),
                    ],
                  ),
                  Text(
                    "Info Detail",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.shield_moon_rounded,
                    color: Colors.green,
                    size: 20,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Clean Accomodation"),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey.shade300,
                height: 1,
                thickness: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rating & Ulasan",
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 0.5,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  // Icon(
                  //   Icons.share,
                  //   color: primaryColor,
                  //   size: 30,
                  // )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 4),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/ic_piknikin_warna.png",
                      width: 80,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "5.0",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, bottom: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Dari 8267 Reviews",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Text(
                    "Lihat Ulasan",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Divider(
                color: Colors.grey.shade300,
                height: 1,
                thickness: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Harga/Kamar/Malam",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Rp 380.000",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Termasuk Pajak",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Container(
                    width: 140,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff1C4C77)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DetailChooseKamar()));
                        },
                        child: Text("Pilih Kamar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
