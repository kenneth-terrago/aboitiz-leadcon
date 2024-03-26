import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                child: Image.asset(
                  'assets/images/Aboitiz_LeadCon_2024_logo_1.png',
                  fit: BoxFit.contain,
                ),
              ),
            )
          : const InitialLoadingPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    child: Image.asset(
                      'assets/images/Aboitiz_LeadCon_2024_logo_1.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : const InitialLoadingPageWidget(),
        ),
        FFRoute(
          name: 'otpCodePage',
          path: '/otpCodePage',
          builder: (context, params) => OtpCodePageWidget(
            destination: params.getParam('destination', ParamType.String),
            uid: params.getParam('uid', ParamType.String),
            accessToken: params.getParam('accessToken', ParamType.String),
            isSMSOTP: params.getParam('isSMSOTP', ParamType.bool),
            goToPage: params.getParam('goToPage', ParamType.String),
            isTestUser: params.getParam('isTestUser', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'agendaOffline',
          path: '/agendaOffline',
          builder: (context, params) => AgendaOfflineWidget(
            date: params.getParam('date', ParamType.DateTime),
            dayNo: params.getParam('dayNo', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'signinPasswordNew',
          path: '/signinPasswordNew',
          builder: (context, params) => SigninPasswordNewWidget(
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'contactInformation',
          path: '/contactInformation',
          builder: (context, params) => const ContactInformationWidget(),
        ),
        FFRoute(
          name: 'forceUpdate',
          path: '/forceUpdate',
          builder: (context, params) => ForceUpdateWidget(
            email: params.getParam('email', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'checkingInfoPage',
          path: '/checkingInfoPage',
          builder: (context, params) => CheckingInfoPageWidget(
            destination: params.getParam('destination', ParamType.String),
            isSMSOTP: params.getParam('isSMSOTP', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'verifyUserPage',
          path: '/verifyUserPage',
          builder: (context, params) => const VerifyUserPageWidget(),
        ),
        FFRoute(
          name: 'chatBasePage',
          path: '/chatBasePage',
          builder: (context, params) => const ChatBasePageWidget(),
        ),
        FFRoute(
          name: 'dashboardHome',
          path: '/dashboardHome',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'dashboardHome')
              : const DashboardHomeWidget(),
        ),
        FFRoute(
          name: 'dashboardProfile',
          path: '/dashboardProfile',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'dashboardProfile')
              : const DashboardProfileWidget(),
        ),
        FFRoute(
          name: 'galleryLanding',
          path: '/galleryLanding',
          builder: (context, params) => const GalleryLandingWidget(),
        ),
        FFRoute(
          name: 'eventPage',
          path: '/eventPage',
          builder: (context, params) => const EventPageWidget(),
        ),
        FFRoute(
          name: 'sbuLanding',
          path: '/sbuLanding',
          builder: (context, params) => const SbuLandingWidget(),
        ),
        FFRoute(
          name: 'participantsPage',
          path: '/participantsPage',
          builder: (context, params) => const ParticipantsPageWidget(),
        ),
        FFRoute(
          name: 'feedbackPage',
          path: '/feedbackPage',
          builder: (context, params) => const FeedbackPageWidget(),
        ),
        FFRoute(
          name: 'sbuDetails',
          path: '/sbuDetails',
          builder: (context, params) => SbuDetailsWidget(
            partnerId: params.getParam('partnerId', ParamType.int),
            partnerTitle: params.getParam('partnerTitle', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'forgotPasswordPage',
          path: '/forgotPasswordPage',
          builder: (context, params) => ForgotPasswordPageWidget(
            email: params.getParam('email', ParamType.String),
            pageTitle: params.getParam('pageTitle', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'agendaPage',
          path: '/agendaPage',
          builder: (context, params) => AgendaPageWidget(
            date: params.getParam('date', ParamType.DateTime),
          ),
        ),
        FFRoute(
          name: 'termsPage',
          path: '/termsPage',
          builder: (context, params) => const TermsPageWidget(),
        ),
        FFRoute(
          name: 'agendaDetails',
          path: '/agendaDetails',
          builder: (context, params) => AgendaDetailsWidget(
            agendaId: params.getParam('agendaId', ParamType.int),
            agendaTitle: params.getParam('agendaTitle', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'imageView',
          path: '/imageView',
          builder: (context, params) => ImageViewWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
            imageLink: params.getParam('imageLink', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'galleryAlbumView',
          path: '/galleryAlbumView',
          builder: (context, params) => GalleryAlbumViewWidget(
            albumId: params.getParam('albumId', ParamType.int),
            albumTitle: params.getParam('albumTitle', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'eventDetailsPage',
          path: '/eventDetailsPage',
          builder: (context, params) => EventDetailsPageWidget(
            starterKitId: params.getParam('starterKitId', ParamType.int),
            starterKitTitle:
                params.getParam('starterKitTitle', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'chatbotPage',
          path: '/chatbotPage',
          builder: (context, params) => const ChatbotPageWidget(),
        ),
        FFRoute(
          name: 'initialLoadingPage',
          path: '/initialLoadingPage',
          builder: (context, params) => const InitialLoadingPageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
