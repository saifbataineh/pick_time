
import 'package:flutter/material.dart';
import 'package:pick_time/features/reviews/reviews_and_rating_page.dart';

class WriteReviewPage extends StatelessWidget {
  const WriteReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.close), onPressed: () => Navigator.pop(context)),
        title: const Text("Write a review"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/images/user.png')),
            const SizedBox(height: 8),
            const Text("Sophia Carter", style: TextStyle(fontWeight: FontWeight.bold)),
            const Text("Haircut", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            const Text("Overall rating", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Column(
              children: const [
                StarBar(rating: 5, percent: 0),
                StarBar(rating: 4, percent: 0),
                StarBar(rating: 3, percent: 0),
                StarBar(rating: 2, percent: 0),
                StarBar(rating: 1, percent: 0),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              decoration: BoxDecoration(color: Colors.green[50], borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                maxLines: null,
                decoration: InputDecoration.collapsed(hintText: "Write your review here..."),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
