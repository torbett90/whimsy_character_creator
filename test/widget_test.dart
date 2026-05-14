import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:whimsy_character_creator/main.dart';

void main() {
  testWidgets('Character Dashboard loading smoke test', (WidgetTester tester) async {
    // 1. Build our app and wrap it in a ProviderScope (Required by Riverpod)
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    // 2. Verify that the AppBar title from Phase 2 is present
    expect(find.text('Phase 2: Riverpod State Engine'), findsOneWidget);

    // 3. Since the Isar DB fetch is asynchronous, Riverpod will initially yield an AsyncLoading state.
    // Verify that our CircularProgressIndicator is displayed.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}