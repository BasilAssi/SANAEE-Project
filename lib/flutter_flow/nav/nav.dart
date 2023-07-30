import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : SplashScreenWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'MAINHomeCustomer',
          path: '/mAINHomeCustomer',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'MAINHomeCustomer')
              : MAINHomeCustomerWidget(),
        ),
        FFRoute(
          name: 'MAINSavedJobs',
          path: '/mAINSavedJobs',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'MAINSavedJobs')
              : MAINSavedJobsWidget(),
        ),
        FFRoute(
          name: 'MAIN_ProfileCustomer',
          path: '/mAINProfileCustomer',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'MAIN_ProfileCustomer')
              : MAINProfileCustomerWidget(),
        ),
        FFRoute(
          name: 'MAIN_Chat',
          path: '/mAINChat',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'MAIN_Chat')
              : MAINChatWidget(),
        ),
        FFRoute(
          name: 'DETAILS_Chat',
          path: '/dETAILSChat',
          asyncParams: {
            'chatUser': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => DETAILSChatWidget(
            chatUser: params.getParam('chatUser', ParamType.Document),
            chatRef: params.getParam(
                'chatRef', ParamType.DocumentReference, false, ['chats']),
          ),
        ),
        FFRoute(
          name: 'JobPost_DetailsActual',
          path: '/jobPostDetailsActual',
          builder: (context, params) => JobPostDetailsActualWidget(
            userCustomer: params.getParam(
                'userCustomer', ParamType.DocumentReference, false, ['users']),
            posts: params.getParam(
                'posts', ParamType.DocumentReference, false, ['post']),
          ),
        ),
        FFRoute(
          name: 'JobPost_MyJob_Applicants',
          path: '/jobPostMyJobApplicants',
          builder: (context, params) => JobPostMyJobApplicantsWidget(
            post: params
                .getParam('post', ParamType.DocumentReference, false, ['post']),
          ),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'CreateJobCustomer',
          path: '/createJobCustomer',
          builder: (context, params) => CreateJobCustomerWidget(),
        ),
        FFRoute(
          name: 'CraftsmanDetails',
          path: '/craftsmanDetails',
          asyncParams: {
            'application':
                getDoc(['Applications'], ApplicationsRecord.fromSnapshot),
          },
          builder: (context, params) => CraftsmanDetailsWidget(
            candidateDetails: params.getParam('candidateDetails',
                ParamType.DocumentReference, false, ['users']),
            application: params.getParam('application', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'SplashScreen',
          path: '/splashScreen',
          builder: (context, params) => SplashScreenWidget(),
        ),
        FFRoute(
          name: 'Onboarding_Screens',
          path: '/onboardingScreens',
          builder: (context, params) => OnboardingScreensWidget(),
        ),
        FFRoute(
          name: 'select_your_role',
          path: '/selectYourRole',
          builder: (context, params) => SelectYourRoleWidget(),
        ),
        FFRoute(
          name: 'SignUp',
          path: '/signUp',
          builder: (context, params) => SignUpWidget(),
        ),
        FFRoute(
          name: 'createProfileNameStepOne',
          path: '/createProfileNameStepOne',
          builder: (context, params) => CreateProfileNameStepOneWidget(),
        ),
        FFRoute(
          name: 'createProfileNameAddresStepTwo',
          path: '/createProfileNameAddresStepTwo',
          builder: (context, params) => CreateProfileNameAddresStepTwoWidget(),
        ),
        FFRoute(
          name: 'createProfileSelectTypeJobStepThree',
          path: '/createProfileSelectTypeJobStepThree',
          builder: (context, params) =>
              CreateProfileSelectTypeJobStepThreeWidget(),
        ),
        FFRoute(
          name: 'createProfileBioStepFour',
          path: '/createProfileBioStepFour',
          builder: (context, params) => CreateProfileBioStepFourWidget(),
        ),
        FFRoute(
          name: 'createProfileNameStepOne_customar',
          path: '/createProfileNameStepOneCustomar',
          builder: (context, params) =>
              CreateProfileNameStepOneCustomarWidget(),
        ),
        FFRoute(
          name: 'createProfileNameAddresStepTwo_customar',
          path: '/createProfileNameAddresStepTwoCustomar',
          builder: (context, params) =>
              CreateProfileNameAddresStepTwoCustomarWidget(),
        ),
        FFRoute(
          name: 'createAccountThreeCustomer',
          path: '/createAccountThreeCustomer',
          builder: (context, params) => CreateAccountThreeCustomerWidget(),
        ),
        FFRoute(
          name: 'ReviewCreateProfileCraftman',
          path: '/reviewCreateProfileCraftman',
          builder: (context, params) => ReviewCreateProfileCraftmanWidget(),
        ),
        FFRoute(
          name: 'MAIN_ProfileCraftsman',
          path: '/mAINProfileCraftsman',
          builder: (context, params) => MAINProfileCraftsmanWidget(),
        ),
        FFRoute(
          name: 'MAIN_ChatCraftsman',
          path: '/mAINChatCraftsman',
          builder: (context, params) => MAINChatCraftsmanWidget(),
        ),
        FFRoute(
          name: 'MAINSavedJobsCraftsman',
          path: '/mAINSavedJobsCraftsman',
          builder: (context, params) => MAINSavedJobsCraftsmanWidget(),
        ),
        FFRoute(
          name: 'MAINHomeCraftsman',
          path: '/mAINHomeCraftsman',
          builder: (context, params) => MAINHomeCraftsmanWidget(),
        ),
        FFRoute(
          name: 'editProfileForCustomer',
          path: '/editProfileForCustomer',
          builder: (context, params) => EditProfileForCustomerWidget(
            userProfile: params.getParam(
                'userProfile', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'editProfileCraftsman',
          path: '/editProfileCraftsman',
          builder: (context, params) => EditProfileCraftsmanWidget(),
        ),
        FFRoute(
          name: 'CustomarEditProfile',
          path: '/customarEditProfile',
          builder: (context, params) => CustomarEditProfileWidget(),
        ),
        FFRoute(
          name: 'JobPost_Accepted',
          path: '/jobPostAccepted',
          builder: (context, params) => JobPostAcceptedWidget(
            userCustomer: params.getParam(
                'userCustomer', ParamType.DocumentReference, false, ['users']),
            posts: params.getParam(
                'posts', ParamType.DocumentReference, false, ['post']),
            application: params.getParam('application',
                ParamType.DocumentReference, false, ['Applications']),
          ),
        ),
        FFRoute(
          name: 'JobPost_Pending',
          path: '/jobPostPending',
          builder: (context, params) => JobPostPendingWidget(
            userCustomer: params.getParam(
                'userCustomer', ParamType.DocumentReference, false, ['users']),
            posts: params.getParam(
                'posts', ParamType.DocumentReference, false, ['post']),
            application: params.getParam('application',
                ParamType.DocumentReference, false, ['Applications']),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

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

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
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
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/splashScreen';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Color(0xFF384C54),
                  child: Image.asset(
                    'assets/images/logo_1.png',
                    fit: BoxFit.none,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
