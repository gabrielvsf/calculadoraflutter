// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';

void main() {
  testWidgets('Botões Calculadora', (WidgetTester tester) async {
    await tester.pumpWidget(Calculadora());
    
    tester.binding.window.physicalSizeTestValue = Size(2000, 2000);

    await tester.tap(find.text('+'));
    await tester.pump();

    expect(find.text(''), findsNothing);
    expect(find.text('+'), findsOneWidget);

    await tester.tap(find.text('-'));
    await tester.pump();

    expect(find.text(''), findsNothing);
    expect(find.text('-'), findsOneWidget);

    await tester.tap(find.text('*'));
    await tester.pump();

    expect(find.text(''), findsNothing);
    expect(find.text('*'), findsOneWidget);

    await tester.tap(find.text('/'));
    await tester.pump();

    expect(find.text(''), findsNothing);
    expect(find.text('/'), findsOneWidget);

    await tester.tap(find.text('%'));
    await tester.pump();

    expect(find.text(''), findsNothing);
    expect(find.text('%'), findsOneWidget);

  });
}
