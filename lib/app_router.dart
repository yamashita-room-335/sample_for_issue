import 'package:auto_route/auto_route.dart';

import 'main.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ParentRoute.page,
          initial: true,
          children: [
            AutoRoute(page: ChildRoute.page, initial: true),
          ],
        ),
      ];
}
