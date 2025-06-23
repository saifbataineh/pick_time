import 'package:flutter/material.dart';
import 'package:pick_time/features/booking/ticket_details.dart';
import 'package:pick_time/core/widgets/custom_container_service.dart';

class MyQueues extends StatelessWidget {
  const MyQueues({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Queues Status"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomContainerService(
            leading: Image.asset("assets/images/tech.png"),
            title: "Tech Solutions",
            subtitle: "Ticket Number: A123",
            trailing: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TicketDetails(
                                leading: Image.asset("assets/images/tech.png"),
                                title: "Tech Solutions",
                                subtitle: "Ticket Number: A123",
                              )));
                },
                child: Text("View Ticket")),
          ),
          CustomContainerService(
            leading: Image.asset("assets/images/health.png"),
            title: "Health Clinic",
            subtitle: "Ticket Number: B456",
            trailing: TextButton(
                onPressed: () {
                  MaterialPageRoute(
                      builder: (context) => TicketDetails(
                            leading: Image.asset("assets/images/health.png"),
                            title: "Health Clinic",
                            subtitle: "Ticket Number: B456",
                          ));
                },
                child: Text("View Ticket")),
          ),
        ],
      ),
    );
  }
}
