
import 'package:flutter_application_go_router/detail/detail_page.dart';
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
    GoRoute(
      name: 'detail',
      path: '/detail/:id',
      builder: (context, state) {
        final id = state.pathParameters['id'] ?? '';
        final msg = state.uri.queryParameters['msg'] ?? '';
        final complexParam = state.extra as List<String>;

        return DetailPage(
          id: id,
          msg: msg,
          complexParam: complexParam,
        );
      },
    ),
  ],
);