import 'package:flutter/material.dart';
import 'package:health_app/widgets/doctor_profile.dart';
import 'package:health_app/widgets/health_needs.dart';
import 'package:health_app/widgets/nearby_doctors.dart';
import 'package:iconsax/iconsax.dart';

class HealthAppHomePage extends StatelessWidget {
  const HealthAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Jane",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "How are you feeling today?",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black45,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black12,
              ),
              color: Colors.white,
            ),
            child: const Icon(
              Iconsax.notification,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black12,
              ),
              color: Colors.white,
            ),
            child: const Icon(
              Iconsax.search_normal,
              size: 25,
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: const [
          DoctorProfile(),
          SizedBox(height: 20),
          Text(
            "Health Needs",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          HealthNeeds(),
          SizedBox(height: 20),
          Text(
            "Nearby Doctor",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          NearbyDoctor(),
        ],
      ),
    );
  }
}
