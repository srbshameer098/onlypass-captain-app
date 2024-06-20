import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Profile'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () => _showProfileBottomSheet(context),
//             child: Text('Show Profile BottomSheet'),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _showProfileBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       backgroundColor: Colors.black,
//       builder: (BuildContext context) {
//         return ProfileBottomSheet();
//       },
//     );
//   }
// }

class ProfileBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Profile',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://example.com/your-image-url.jpg'), // Replace with your image URL
            ),
            SizedBox(height: 8),
            Text(
              'Shafeek Ahmed',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () {},
                    ),
                    Text('Renew'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.pause),
                      onPressed: () {},
                    ),
                    Text('Hold'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.phone),
                      onPressed: () {},
                    ),
                    Text('Contact'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Member activities',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChoiceChip(
                  label: Text('All'),
                  selected: true,
                ),
                ChoiceChip(
                  label: Text('Attendance'),
                  selected: false,
                ),
                ChoiceChip(
                  label: Text('Payments'),
                  selected: false,
                ),
              ],
            ),
            SizedBox(height: 16),
            MemberActivityCard(
              date: 'Feb 14',
              day: 'Wed',
              checkIn: '07:32 pm',
              checkOut: '08:45 pm',
              spend: '01:13 Hrs.',
            ),
            MemberActivityCard(
              date: 'Feb 14',
              day: 'Wed',
              item: '3 Months Membership',
              amount: '1899.00',
            ),
          ],
        ),
      ),
    );
  }
}

class MemberActivityCard extends StatelessWidget {
  final String date;
  final String day;
  final String? checkIn;
  final String? checkOut;
  final String? spend;
  final String? item;
  final String? amount;

  MemberActivityCard({
    required this.date,
    required this.day,
    this.checkIn,
    this.checkOut,
    this.spend,
    this.item,
    this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      date,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(day),
                  ],
                ),
                Spacer(),
                if (checkIn != null && checkOut != null && spend != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Check-in: $checkIn'),
                      Text('Check-out: $checkOut'),
                      Text('Spend: $spend'),
                    ],
                  ),
                if (item != null && amount != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Item: $item'),
                      Text('Amount: \$${amount}'),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
