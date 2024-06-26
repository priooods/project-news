import 'package:go_router/go_router.dart';
import 'package:project_news/layout/dashboard.dart';
import 'package:project_news/layout/detail.dart';

class Routers {
  init() {
    return GoRouter(initialLocation: '/dashboard', routes: [
      GoRoute(
        name: 'DASHBOARD',
        path: '/dashboard',
        builder: (context, state) => const Dashboard(),
      ),
      GoRoute(
        name: 'DETAIL',
        path: '/detail/:title/:link',
        builder: (context, state) => Detail(title: state.pathParameters['title'], link: state.pathParameters['link']),
      ),
    ]);
  }
}
