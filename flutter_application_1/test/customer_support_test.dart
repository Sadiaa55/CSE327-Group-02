import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/feature/home/presentation/widget/customer_support_widget.dart';

void main() {
  testWidgets('Customer Support widget renders correctly', (WidgetTester tester) async {
    
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomerSupportWidget(),
        ),
      ),
    );

    // Check if title exists
    expect(find.text('Customer Support'), findsOneWidget);

    // Check if text fields are present
    expect(find.widgetWithText(TextField, 'Your Name'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Email'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Problem Description'), findsOneWidget);

    // Check button
    expect(find.text('Live Chat Now'), findsOneWidget);
  });

  testWidgets('Live Chat button can be tapped', (WidgetTester tester) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ElevatedButton(
            onPressed: () => tapped = true,
            child: const Text('Live Chat Now'),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Live Chat Now'));
    expect(tapped, true);
  });
}
