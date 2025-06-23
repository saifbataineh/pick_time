import 'package:flutter/material.dart';

class BookingConfirmed extends StatelessWidget {
  const BookingConfirmed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close)),
        title: Text(
          "Booking Confirmed",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "You're all set!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "Your virtual ticket is confirmed. Please arrive 15 minutes before your scheduled time."),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 254,
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), // لو بدك زوايا مستديرة
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                'assets/images/confirmed.png',
                fit: BoxFit.cover,
              ),
            ),
            Spacer(),
            Container(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "View Ticket",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
