import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/feature/ticket_refund/refund_widget.dart';


void main() {
    testWidgets('RefundWidget displays text', (WidgetTester tester) async {
    // Widget test: Verify RefundWidget renders and interaction  // Build widget
      await tester.pumpWidget(
        MaterialApp(
          home: RefundWidget(),
        ),
      );

      // Verify presence of key text widgets
      expect(
        find.text('Refund Eligibility:'), findsOneWidget);
      expect(
        find.text('Terms & Conditions:'), findsOneWidget);
      expect(
        find.text('Refund Request'), findsOneWidget);
      expect(
        find.byType(TextField), findsOneWidget);
      expect(
        find.text('Submit'), findsOneWidget);
    });
  }