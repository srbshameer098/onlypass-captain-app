import 'package:flutter/material.dart';

class Members extends StatelessWidget {
  const Members({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Transaction History'),
      ),
      body: ListView.separated(
        itemCount: transactionHistory.length,
        itemBuilder: (context, index) {
          final transaction = transactionHistory[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[800],
              child: Text(transaction['member']![0],style: TextStyle(
                  color: Colors.white54
              )),
            ),
            title: Text(transaction['member']!,
                style: TextStyle(
                  color: Colors.white
                )),
            subtitle: Text(transaction['transaction']!),
            trailing: Text(transaction['amount']!,
              style: TextStyle(
                color: transaction['amount'] == 'Due' ? Color(0xffFF4D4D) :
                transaction['amount'] == 'Expiring' ? Color(0xffF1BE0A) :
                Color(0xff00FF00),
              ),),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 20,),
      ),
    );
  }
}

final transactionHistory = [
  {
    'member': 'Divya Mohanan',
    'transaction': 'Access granted for Onlypass member',
    'amount': 'Due',
  },
  {
    'member': 'Sharon Varghese',
    'transaction': 'Access granted for Onlypass member',
    'amount': 'Expiring',
  },
  {
    'member': 'Akhilesh Chandran',
    'transaction': 'Access granted for Onlypass member',
    'amount': '750.00',
  },
  {
    'member': 'GymFit Club',
    'transaction': 'Access granted for Onlypass member',
    'amount': '7000.00',
  },
  // Add the rest of the transactions here...
];