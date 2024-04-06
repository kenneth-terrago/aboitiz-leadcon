import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'initial_loading_page_model.dart';
export 'initial_loading_page_model.dart';

class InitialLoadingPageWidget extends StatefulWidget {
  const InitialLoadingPageWidget({super.key});

  @override
  State<InitialLoadingPageWidget> createState() =>
      _InitialLoadingPageWidgetState();
}

class _InitialLoadingPageWidgetState extends State<InitialLoadingPageWidget> {
  late InitialLoadingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialLoadingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2000));
      _model.appVersion = await actions.getAppVersion();
      // getAppVersionInt
      _model.appVerstionInt = actions.getExtendedVersionNumber(
        _model.appVersion!,
      );
      _model.requiredMinVersionInt = actions.getExtendedVersionNumber(
        getRemoteConfigString('requiredMinimumVersion'),
      );
      _model.recommendedMinVersionInt = actions.getExtendedVersionNumber(
        getRemoteConfigString('recommendedMinimumVersion'),
      );
      if (_model.appVerstionInt! < _model.requiredMinVersionInt!) {
        context.goNamed('forceUpdatePage');

        return;
      } else {
        if (FFAppState().isAuthenticated) {
          context.pushNamed('dashboardHome');

          return;
        } else {
          context.pushNamed('verifyUserPage');

          return;
        }
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Aboitiz_LeadCon_2024_logo_1.png',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
