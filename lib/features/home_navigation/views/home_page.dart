import 'package:flutter/material.dart';
import 'package:pick_time/features/services/bank_service.dart';
import 'package:pick_time/core/widgets/custom_container_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Book a service",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: const Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomContainerService(
              leading: const IconWithBackground(
                  imagePath: "assets/icons/company.png"),
              title: "Government",
              subtitle: "Government",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            CustomContainerService(
              leading:
                  const IconWithBackground(imagePath: "assets/icons/water.png"),
              title: "Water Services",
              subtitle: "Water Services",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            CustomContainerService(
              leading:
                  const IconWithBackground(imagePath: "assets/icons/cut.png"),
              title: "Electricity Services",
              subtitle: "Electricity Services",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            CustomContainerService(
              leading: const IconWithBackground(
                  imagePath: "assets/icons/communication.png"),
              title: "Telecommunications",
              subtitle: "Telecommunications",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            CustomContainerService(
              leading: const IconWithBackground(
                  imagePath: "assets/icons/company.png"),
              title: "Banks",
              subtitle: "Banks",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BankService()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomContainerService(
              leading: const IconWithBackground(
                imagePath: "assets/icons/orgnization.png",
              ),
              title: "Charitable Organizations",
              subtitle: "Charitable Organizations",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class IconWithBackground extends StatelessWidget {
  final String imagePath;

  const IconWithBackground({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFE5F5F0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Image.asset(imagePath),
      ),
    );
  }
}
