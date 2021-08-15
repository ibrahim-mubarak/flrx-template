// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flrx_skeleton/modules/common/common_module.dart';
import 'package:flrx_skeleton/modules/common/pages/posts_page.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:flrx_skeleton/store/store_retriever.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await CommonModule().initialize();
    Store<AppState> store = await AppStoreRetriever().retrieveStore();
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: StoreProvider(
        store: store,
        child: PostPage(),
      ),
    ));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
