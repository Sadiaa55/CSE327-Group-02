import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/feature/genre_setting/category_widget.dart';

void main() {
  testWidgets('CategoryWidget selection', (WidgetTester tester) async {
    // Build the widget inside a MaterialApp for proper rendering
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CategoryWidget(),
        ),
      ),
    );

    // Verify that all ChoiceChips are present
    expect(
      find.text('Comedy'), findsOneWidget
      );
    expect(
      find.text('Action'), findsOneWidget
      );
    expect(
      find.text('Drama'), findsOneWidget
      );
    expect(
      find.text('Horror'), findsOneWidget
      );
    expect(
      find.text('Sci-fi'), findsOneWidget
      );

  
  });
}
