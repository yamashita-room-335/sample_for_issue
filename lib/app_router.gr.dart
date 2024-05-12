// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChildRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChildPage(),
      );
    },
    ParentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ParentPage(),
      );
    },
  };
}

/// generated route for
/// [ChildPage]
class ChildRoute extends PageRouteInfo<void> {
  const ChildRoute({List<PageRouteInfo>? children})
      : super(
          ChildRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChildRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ParentPage]
class ParentRoute extends PageRouteInfo<void> {
  const ParentRoute({List<PageRouteInfo>? children})
      : super(
          ParentRoute.name,
          initialChildren: children,
        );

  static const String name = 'ParentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
