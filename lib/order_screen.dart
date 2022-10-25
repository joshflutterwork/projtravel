import 'package:flutter/material.dart';
import 'package:travel_proj/order_history_screen.dart';
import 'package:travel_proj/util.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: primaryColor,
              child: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => OrderHistoryScreen()));
            },
            child: Icon(
              Icons.history,
              color: primaryColor,
              size: 40,
            ),
          )
        ],
        title: Text(
          "Orderan",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/no_data.png",
              height: 200,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "No Data",
              style:
                  TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
