import 'package:flutter/material.dart';
import 'package:travel_proj/util.dart';

class DetailChooseKamar extends StatefulWidget {
  const DetailChooseKamar({Key? key}) : super(key: key);

  @override
  State<DetailChooseKamar> createState() => _DetailChooseKamarState();
}

class _DetailChooseKamarState extends State<DetailChooseKamar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image.asset("assets/gambar_hotel_detail_3.png"),
                  ],
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
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.5),
                              child: Icon(Icons.arrow_back,
                                  size: 24, color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hotel Anugerah Sukabumi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Jl Salabintana Km 11.2 Sukabumi...",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.more_horiz_sharp,
                          size: 34,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(4),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/ic_kalender.png",
                                  width: 24,
                                ),
                                Text(
                                  "8 Okt 2022",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                "|",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30),
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/ic_malam.png",
                                  width: 24,
                                ),
                                Text(
                                  "1 Malam",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                "|",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: primaryColor,
                                  size: 24,
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.door_back_door_outlined,
                                  color: primaryColor,
                                  size: 24,
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: ThemeData().scaffoldBackgroundColor,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Card(
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 430,
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Superior Single Bet | No Smoking Area",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 4.0, top: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.info_outline,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Kamar ini memiliki 1 Kamar Tidur",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 4.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.add_chart_sharp,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "31.0 m2 - Dengan balkon / teras",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 4.0, top: 4.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 8.0,
                                                right: 8.0,
                                                top: 6.0,
                                                bottom: 6.0),
                                            decoration: BoxDecoration(
                                                color: primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Text(
                                              "Deskripsi Kamar",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 4.0, top: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.person_outline,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "2 Tamu kamar",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.bed_outlined,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "1 Ranjang Single",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.food_bank_outlined,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Tidak termasuk sarapan",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.smoke_free_outlined,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Tidak bisa merokok",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.ac_unit,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Ruangan ber-AC",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.wifi,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Ada Internet",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "Rp 380.000",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Text(
                                                "Harga/Kamar/Malam",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              // Text(
                                              //   "Termasuk Pajak",
                                              //   style: TextStyle(
                                              //       color: Colors.grey,
                                              //       fontSize: 14,
                                              //       fontWeight: FontWeight.w700),
                                              // ),
                                            ],
                                          ),
                                          Container(
                                            width: 140,
                                            height: 40,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.red[700]),
                                                onPressed: () {},
                                                child: Text("Pilih Kamar",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Card(
                              elevation: 10,
                              child: Container(
                                height: 430,
                                padding: EdgeInsets.all(4),
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Superior Single Bet | No Smoking Area",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 4.0, top: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.info_outline,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Kamar ini memiliki 1 Kamar Tidur",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 4.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.add_chart_sharp,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "31.0 m2 - Dengan balkon / teras",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 4.0, top: 4.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 8.0,
                                                right: 8.0,
                                                top: 6.0,
                                                bottom: 6.0),
                                            decoration: BoxDecoration(
                                                color: primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Text(
                                              "Deskripsi Kamar",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 4.0, top: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.person_outline,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "2 Tamu kamar",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.bed_outlined,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "1 Ranjang Single",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.food_bank_outlined,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Tidak termasuk sarapan",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.smoke_free_outlined,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Tidak bisa merokok",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.ac_unit,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Ruangan ber-AC",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        bottom: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.wifi,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "Ada Internet",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "Rp 380.000",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Text(
                                                "Harga/Kamar/Malam",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              // Text(
                                              //   "Termasuk Pajak",
                                              //   style: TextStyle(
                                              //       color: Colors.grey,
                                              //       fontSize: 14,
                                              //       fontWeight: FontWeight.w700),
                                              // ),
                                            ],
                                          ),
                                          Container(
                                            width: 140,
                                            height: 40,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.red[700]),
                                                onPressed: () {},
                                                child: Text("Pilih Kamar",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
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
