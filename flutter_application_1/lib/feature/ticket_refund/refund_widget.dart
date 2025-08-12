import 'package:flutter/material.dart';

class RefundWidget extends StatelessWidget {
  const RefundWidget({super.key});
//  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket Refund Policy"),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Refund Eligibility:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              "1. 24-Hour Cancellation\nFull refund available up to 24 hours before showtime.\n\n"
              "2. 2-24 Hours Before\n50% refund available between 2-24 hours before showtime.\n\n"
              "3. Less Than 2 Hours\nNo refund available within 2 hours of showtime.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 12),
            Text(
              "Terms & Conditions:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              "General Terms \n\n1. Refunds are subject to availability and theater policies. \n2. Processing fees may apply for certain payment methods. \n3. Group bookings may have different refund policies. \n4. Special event tickets may be non-refundable. \n\n"
              "Exceptions \n\n1. Technical issues preventing movie screening. \n2. Theater closure due to unforeseen circumstances. \n3. Movie cancellation by the theater. \n4. Emergency situations as determined by management. \n\n",
              style: TextStyle(fontSize: 16),
            ),
          const SizedBox(height: 16),
          Text( "Refund Request"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
            Center(
            child: ElevatedButton( 
              onPressed: () { 
                print('Request Submitted'); 
              },
             child: Text('Submit'),
             ),
           )
          ],
        ),
      ),
    );
  }
}
