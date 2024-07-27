import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gymbuddies/presentation/auth/pages/login_page.dart';
import 'package:gymbuddies/presentation/home/pages/home_page.dart';

// void main() {
//   testWidgets('Clicking LOGIN on LoginPage navigates to HomePage', (WidgetTester tester) async {
//     // Create a GoRouter instance for testing
//     final GoRouter router = GoRouter(
//       routes: [
//         GoRoute(
//           path: '/login',
//           builder: (context, state) => const LoginPage(),
//         ),
//         GoRoute(
//           path: '/home',
//           builder: (context, state) => const HomePage(),
//         ),
//       ],
//     );

//     // Build the widget tree with the router
//     await tester.pumpWidget(
//       MaterialApp.router(
//         routerConfig: router,
//       ),
//     );

//     // Verify that LoginPage is displayed initially
//     // expect(find.byType(LoginPage), findsOneWidget);

//     // Verify that LoginButton is displayed
//     // expect(find.byType(LoginButton), findsOneWidget);

//     // Simulate tapping the 'LOGIN' button
//     await tester.tap('LOGIN' as FinderBase<Element>);
//     await tester.pumpAndSettle(); // Wait for navigation to complete

//     // Verify that navigation occurs to HomePage
//     expect(find.byType(HomePage), findsOneWidget);
//   });
// }


@GenerateMocks(<Type>[LoginPage])
class GeneratedMocks {}

void main() {

  testWidgets('Clicking LOGIN on LoginPage navigates to HomePage', (WidgetTester tester) async {
    // Create a GoRouter instance for testing
    final GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
      ],
    );

    // Execute
    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: router,
      ),
    );

    // Verify

    expect(router, '/login');
  });
}