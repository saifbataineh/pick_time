import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pick_time/features/reviews/reviews_and_rating_page.dart';
import 'package:pick_time/features/services/service_details.dart';

class ServiceProvider extends StatelessWidget {
  const ServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Service Provider"),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.green,
            tabs: [
              Tab(text: "Overview"),
              Tab(text: "Service"),
              Tab(text: "Reviews & Ratings"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [Overview(), Service(), ReviewsAndRatingPage()],
        ),
      ),
    );
  }
}

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7),
              const Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 5),
              const Text(
                "This service provider offers a range of services, including consultations, treatments, and workshops. Our team of experts is dedicated to providing high-quality care and personalized solutions to meet your needs.",
              ),
              const SizedBox(height: 15),
              const Text(
                "Operating Hours",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 5),
              const Divider(color: Colors.grey),
              const SizedBox(height: 5),
              Column(
                children: [
                  _buildDayRow("Monday", "Tuesday"),
                  _buildDayRow("Wednesday", "Thursday"),
                  _buildDayRow("Friday", "Saturday"),
                  const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sunday", style: TextStyle(color: Colors.green)),
                          Text("Closed"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Location"),
              Container(
                height: 255,
                width: double.infinity,
                child: MapInContainer(),
              ),
              SizedBox(height: 15),
              const Text(
                "Contact",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 15),
              const Divider(color: Colors.grey),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone", style: TextStyle(color: Colors.green)),
                      Text("(555) \n123-4567"),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email", style: TextStyle(color: Colors.green)),
                      Text("info@serviceprovider.com"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDayRow(String day1, String day2) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(day1, style: TextStyle(color: Colors.green)),
              Text("9 AM-6 PM"),
            ],
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(day2, style: TextStyle(color: Colors.green)),
              Text("9 AM-6 PM"),
            ],
          ),
        ],
      ),
    );
  }
}

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          _buildServiceTile(
              context,
              "Service 1",
              "Duration: 30 mins \nBrief description of the service",
              "Service:1"),
          _buildServiceTile(
              context,
              "Service 2",
              "Duration: 45 mins \nBrief description of the service",
              "Service:2"),
          _buildServiceTile(
              context,
              "Service 3",
              "Duration: 60 mins \nBrief description of the service",
              "Service:3"),
          _buildServiceTile(
              context,
              "Service 4",
              "Duration: 20 mins \nBrief description of the service",
              "Service:4"),
        ],
      ),
    );
  }

  Widget _buildServiceTile(BuildContext context, String title, String subtitle,
      String trailingText) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ServiceDetails()));
      },
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.green),
      ),
      trailing: Transform.translate(
        offset: Offset(0, -15),
        child: Text(
          trailingText,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}

class MapInContainer extends StatefulWidget {
  const MapInContainer({super.key});

  @override
  _MapInContainerState createState() => _MapInContainerState();
}

class _MapInContainerState extends State<MapInContainer> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(31.963158, 35.930359); // عمّان مثلًا

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("خريطة داخل كونتينر")),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
        ),
      ),
    );
  }
}
