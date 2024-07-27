import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:gymbuddies/presentation/auth/pages/login_page.dart';
import 'package:gymbuddies/presentation/home/pages/home_page.dart';

void main() {
  testWidgets('Clicking LOGIN on LoginPage navigates to HomePage', (WidgetTester tester) async {
    final router = GoRouter(
      initialLocation: '/login',
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

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp.router(
          routerConfig: router,
        ),
      ),
    );

    // Verify that LoginPage is displayed initially
    expect(find.byType(LoginPage), findsOneWidget);

    // Verify that LoginButton is displayed
    expect(find.text('LOGIN'), findsOneWidget);

    // Simulate tapping the 'LOGIN' button
    await tester.tap(find.text('LOGIN'));
    await tester.pumpAndSettle(); // Wait for navigation to complete

    // Verify that navigation occurs to HomePage
    expect(find.byType(HomePage), findsOneWidget);
  });
}
