import 'package:flutter/material.dart';
import 'package:pick_time/features/booking/redeemed.dart';
import 'package:pick_time/core/widgets/custom_container_service.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 128,
              width: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage("assets/images/profile.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Sophia Chen",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text("Member since 2022", style: TextStyle(color: Colors.green)),
            SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rewards",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                CustomContainerService(
                  leading: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5F5F0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.add),
                  ),
                  title: "Points earned",
                  subtitle: "1,200 points",
                  onTap: () {},
                ),
                CustomContainerService(
                  leading: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5F5F0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.remove),
                  ),
                  title: "Points used",
                  subtitle: "500 points",
                  onTap: () {},
                ),
                CustomContainerService(
                  leading: Image.asset("assets/images/coins.png"),
                  title: "Points remaining",
                  subtitle: "700 points",
                  onTap: () {},
                ),
                SizedBox(height: 16),
                Text(
                  "Coupons",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                CustomContainerService(
                  leading: Image.asset("assets/images/coupons.png"),
                  title: "Coupons redeemed",
                  subtitle: "2 coupons",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Redeemed()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
