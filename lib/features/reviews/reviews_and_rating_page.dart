import 'package:flutter/material.dart';
import 'package:pick_time/features/reviews/review_page.dart';

class ReviewsAndRatingPage extends StatelessWidget {
  const ReviewsAndRatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Reviews & Ratings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Row(
              children: const [
                Text("4.5",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StarBar(rating: 5, percent: 0.4),
                    StarBar(rating: 4, percent: 0.3),
                    StarBar(rating: 3, percent: 0.15),
                    StarBar(rating: 2, percent: 0.1),
                    StarBar(rating: 1, percent: 0.05),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  ReviewItem(
                    name: 'Sophia Bennett',
                    timeAgo: '2 weeks ago',
                    comment:
                        'Exceptional service! The staff was incredibly friendly and efficient. I highly recommend this place.',
                    likes: 15,
                    replies: 2,
                    rating: 5,
                  ),
                  ReviewItem(
                    name: 'Ethan Carter',
                    timeAgo: '1 month ago',
                    comment:
                        "Good experience overall. The service was prompt, but there's room for improvement in the waiting area.",
                    likes: 8,
                    replies: 1,
                    rating: 4,
                  ),
                  ReviewItem(
                    name: 'Olivia Davis',
                    timeAgo: '2 months ago',
                    comment:
                        'Fantastic service! The team was professional and the process was seamless. Will definitely return.',
                    likes: 20,
                    replies: 3,
                    rating: 5,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WriteReviewPage()));
              },
              child: const Text("Submit Review"),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40)),
            ),
          ],
        ),
      ),
    );
  }
}

class StarBar extends StatelessWidget {
  final int rating;
  final double percent;

  const StarBar({super.key, required this.rating, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$rating '),
        Container(
          width: 150,
          height: 6,
          margin: const EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
          child: FractionallySizedBox(
            widthFactor: percent,
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ),
        Text(' ${(percent * 100).toInt()}%'),
      ],
    );
  }
}

class ReviewItem extends StatelessWidget {
  final String name;
  final String timeAgo;
  final String comment;
  final int likes;
  final int replies;
  final int rating;

  const ReviewItem({
    super.key,
    required this.name,
    required this.timeAgo,
    required this.comment,
    required this.likes,
    required this.replies,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(timeAgo, style: const TextStyle(color: Colors.grey)),
          ]),
          Row(
              children: List.generate(
                  5,
                  (index) => Icon(Icons.star,
                      size: 16,
                      color: index < rating ? Colors.orange : Colors.grey))),
          const SizedBox(height: 4),
          Text(comment),
          const SizedBox(height: 4),
          Row(children: [
            Icon(Icons.thumb_up, size: 14, color: Colors.grey),
            const SizedBox(width: 4),
            Text('$likes'),
            const SizedBox(width: 16),
            Icon(Icons.comment, size: 14, color: Colors.grey),
            const SizedBox(width: 4),
            Text('$replies'),
          ])
        ],
      ),
    );
  }
}
