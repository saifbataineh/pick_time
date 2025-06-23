import 'package:flutter/material.dart';
import 'package:pick_time/features/booking/booking_confirmed.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service Details"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Virtual Consultation",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
                "This service provides a virtual consultation with a specialist to discuss your needs and determine the best course of action. It's a convenient way to get expert advice without visiting the office."),
            SizedBox(height: 20),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Duration",
                      style: TextStyle(color: Colors.green),
                    ),
                    Text("30")
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Prerequistes", style: TextStyle(color: Colors.green)),
                    Text(("Non"))
                  ],
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Required Documents",
              style: TextStyle(color: Colors.green),
            ),
            Text("Identification, relevant medical history"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Rewards Redemption",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            ListTile(
              title: Text("10% off next consultation"),
              subtitle: Text("500 points"),
              trailing: TextButton(onPressed: () {}, child: Text("Redeem")),
            ),
            ListTile(
              title: Text("Free consultation"),
              subtitle: Text("1000 points"),
              trailing: TextButton(onPressed: () {}, child: Text("Redeem")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // الخلفية الخضراء
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15), // نفس استدارة الكونتينر
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingConfirmed()));
                  },
                  child: Text(
                    "Book Now",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
