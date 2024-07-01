import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

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
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: RootPageContext.wrap(
          appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
          errorRoute: state.uri.toString(),
        ),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => RootPageContext.wrap(
            appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
          ),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'Ledger',
          path: '/ledger',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Ledger')
              : const LedgerWidget(),
        ),
        FFRoute(
          name: 'Bills',
          path: '/bills',
          requireAuth: true,
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'Bills') : const BillsWidget(),
        ),
        FFRoute(
          name: 'Incomes',
          path: '/incomes',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Incomes')
              : const IncomesWidget(),
        ),
        FFRoute(
          name: 'Options',
          path: '/More',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Options')
              : const OptionsWidget(),
        ),
        FFRoute(
          name: 'SalesPage',
          path: '/purchase',
          requireAuth: true,
          builder: (context, params) => const SalesPageWidget(),
        ),
        FFRoute(
          name: 'AddBill',
          path: '/addBill',
          requireAuth: true,
          builder: (context, params) => const AddBillWidget(),
        ),
        FFRoute(
          name: 'BillDetails',
          path: '/billDetails',
          requireAuth: true,
          builder: (context, params) => BillDetailsWidget(
            billId: params.getParam(
              'billId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AddInvite',
          path: '/addInvite',
          requireAuth: true,
          builder: (context, params) => const AddInviteWidget(),
        ),
        FFRoute(
          name: 'CreateHousehold',
          path: '/createHousehold',
          requireAuth: true,
          builder: (context, params) => const CreateHouseholdWidget(),
        ),
        FFRoute(
          name: 'EditHousehold',
          path: '/editHousehold',
          requireAuth: true,
          builder: (context, params) => const EditHouseholdWidget(),
        ),
        FFRoute(
          name: 'EditMembers',
          path: '/editMembers',
          requireAuth: true,
          builder: (context, params) => const EditMembersWidget(),
        ),
        FFRoute(
          name: 'AddIncome',
          path: '/addIncome',
          requireAuth: true,
          builder: (context, params) => const AddIncomeWidget(),
        ),
        FFRoute(
          name: 'EditIncome',
          path: '/editIncome',
          requireAuth: true,
          builder: (context, params) => EditIncomeWidget(
            incomeId: params.getParam(
              'incomeId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AddTransaction',
          path: '/addTransaction',
          requireAuth: true,
          builder: (context, params) => const AddTransactionWidget(),
        ),
        FFRoute(
          name: 'Categories',
          path: '/categories',
          requireAuth: true,
          builder: (context, params) => CategoriesWidget(
            householdId: params.getParam(
              'householdId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'EditTransaction',
          path: '/editTransaction',
          requireAuth: true,
          builder: (context, params) => EditTransactionWidget(
            transactionId: params.getParam(
              'transactionId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'SearchTransactions',
          path: '/searchTransactions',
          requireAuth: true,
          builder: (context, params) => const SearchTransactionsWidget(),
        ),
        FFRoute(
          name: 'TransactionDetails',
          path: '/transactionDetails',
          requireAuth: true,
          builder: (context, params) => TransactionDetailsWidget(
            ledgerId: params.getParam(
              'ledgerId',
              ParamType.String,
            ),
            billId: params.getParam(
              'billId',
              ParamType.String,
            ),
            transactionId: params.getParam(
              'transactionId',
              ParamType.String,
            ),
            incomeId: params.getParam(
              'incomeId',
              ParamType.String,
            ),
            type: params.getParam(
              'type',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'EditNotification',
          path: '/editNotification',
          requireAuth: true,
          builder: (context, params) => EditNotificationWidget(
            billId: params.getParam(
              'billId',
              ParamType.String,
            ),
            notificationId: params.getParam(
              'notificationId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Notifications',
          path: '/notifications',
          requireAuth: true,
          builder: (context, params) => const NotificationsWidget(),
        ),
        FFRoute(
          name: 'Wallets',
          path: '/wallets',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Wallets')
              : const WalletsWidget(),
        ),
        FFRoute(
          name: 'EditWallet',
          path: '/editWallet',
          requireAuth: true,
          builder: (context, params) => const EditWalletWidget(),
        ),
        FFRoute(
          name: 'WalletDetails',
          path: '/walletDetails',
          requireAuth: true,
          builder: (context, params) => const WalletDetailsWidget(),
        ),
        FFRoute(
          name: 'Export',
          path: '/export',
          requireAuth: true,
          builder: (context, params) => const ExportWidget(),
        ),
        FFRoute(
          name: 'ExportSearch',
          path: '/exportSearch',
          requireAuth: true,
          builder: (context, params) => ExportSearchWidget(
            householdId: params.getParam(
              'householdId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ExportToCSV',
          path: '/exportToCSV',
          requireAuth: true,
          builder: (context, params) => ExportToCSVWidget(
            householdId: params.getParam(
              'householdId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ExportToQBO',
          path: '/exportToQBO',
          requireAuth: true,
          builder: (context, params) => ExportToQBOWidget(
            householdid: params.getParam(
              'householdid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'updateUser',
          path: '/updateUser',
          requireAuth: true,
          builder: (context, params) => const UpdateUserWidget(),
        ),
        FFRoute(
          name: 'DeleteUser',
          path: '/deleteUser',
          requireAuth: true,
          builder: (context, params) => const DeleteUserWidget(),
        ),
        FFRoute(
          name: 'AcceptInvite',
          path: '/AcceptInvite',
          builder: (context, params) => AcceptInviteWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
            firstname: params.getParam(
              'firstname',
              ParamType.String,
            ),
            lastname: params.getParam(
              'lastname',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ChangePassword',
          path: '/changePassword',
          requireAuth: true,
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'ViewAllBills',
          path: '/viewAllBills',
          requireAuth: true,
          builder: (context, params) => ViewAllBillsWidget(
            householdId: params.getParam(
              'householdId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'EditLEdgerEntry',
          path: '/editLEdgerEntry',
          requireAuth: true,
          builder: (context, params) => EditLEdgerEntryWidget(
            ledgerId: params.getParam(
              'ledgerId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AddWallet',
          path: '/addWallet',
          builder: (context, params) => const AddWalletWidget(),
        ),
        FFRoute(
          name: 'Account',
          path: '/account',
          requireAuth: true,
          builder: (context, params) => const AccountWidget(),
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
    ..addAll(uri.queryParameters)
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
      (state.allParams.length == 1 &&
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
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
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
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
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
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

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

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    required this.state,
    required this.child,
  });

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();
    // Handle erroneous links from Firebase Dynamic Links.
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      SchedulerBinding.instance.addPostFrameCallback((_) => context.go('/'));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
