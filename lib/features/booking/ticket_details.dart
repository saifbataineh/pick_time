import 'package:flutter/material.dart';

class TicketDetails extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;

  const TicketDetails({
    required this.leading,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: leading,
              title: Text(title),
              subtitle: Text(subtitle),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Booked Service",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 204, 203, 203),
                      borderRadius: BorderRadius.circular(7)),
                  child: Icon(Icons.phone)),
              title: Text("Phone Repair "),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Ticket Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [Text("Ticket Number"), Spacer(), Text("A123")],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [Text("People Ahead"), Spacer(), Text("5")],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text("Estimated Wait Time"),
                Spacer(),
                Text("20 minutes")
              ],
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: Text(
                    "I Have Arrived",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "Cancel Ticket",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
