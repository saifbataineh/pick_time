import 'package:flutter/material.dart';
import 'package:pick_time/features/services/service_provider.dart';
import 'package:pick_time/core/widgets/custom_container_service.dart';

class BankService extends StatelessWidget {
  const BankService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomContainerService(
            leading: Image.asset('assets/images/one.png'),
            title: 'First National Bank',
            subtitle: '4.5 • 15 min avg. wait',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServiceProvider()),
              );
            },
          ),
          CustomContainerService(
            leading: Image.asset('assets/images/tow.png'),
            title: 'Community Trust Bank',
            subtitle: '4.5 • 15 min avg. wait',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServiceProvider()),
              );
            },
          ),
          CustomContainerService(
            leading: Image.asset('assets/images/three.png'),
            title: 'United Savings Bank',
            subtitle: '4.5 • 15 min avg. wait',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServiceProvider()),
              );
            },
          ),
          CustomContainerService(
            leading: Image.asset('assets/images/foure.png'),
            title: 'Regional Credit Union',
            subtitle: '4.5 • 15 min avg. wait',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServiceProvider()),
              );
            },
          ),
          CustomContainerService(
            leading: Image.asset('assets/images/five.png'),
            title: 'Citywide Bank',
            subtitle: '4.5 • 15 min avg. wait',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServiceProvider()),
              );
            },
          ),
        ],
      ),
    );
  }
}
