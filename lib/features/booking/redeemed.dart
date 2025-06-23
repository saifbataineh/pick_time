import 'package:flutter/material.dart';
import 'package:pick_time/core/widgets/custom_container_service.dart';

class Redeemed extends StatelessWidget {
  const Redeemed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Redeemed"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomContainerService(
              leading: Image.asset("assets/images/r1.png"),
              title: "Coffee Shop",
              subtitle: "Free Coffee"),
          CustomContainerService(
              leading: Image.asset("assets/images/r2.png"),
              title: "Clothing Store",
              subtitle: "20% off on next purchase"),
          CustomContainerService(
              leading: Image.asset("assets/images/r3.png"),
              title: "Restaurant",
              subtitle: "Free dessert"),
          CustomContainerService(
              leading: Image.asset("assets/images/r4.png"),
              title: "Barber Shop",
              subtitle: "Free haircut"),
          CustomContainerService(
              leading: Image.asset("assets/images/r5.png"),
              title: "Cinema",
              subtitle: "Free movie ticket")
        ],
      ),
    );
  }
}
