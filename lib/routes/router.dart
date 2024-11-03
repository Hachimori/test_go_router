
import 'package:flutter_application_go_router/home/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/Hachimori\'s Home',
  routes: [
    GoRoute(
      path: '/:title',
      builder: (context, state) {
        final title = state.pathParameters['title'];
        return HomePage(title: title ?? 'Home Page');
      }
    ),
    // GoRoute(
    //   path: '/detail/:id',
    //   pageBuilder: (context, state) => DetailPage(),
    // ),
  ],
);