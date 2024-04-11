import '/components/feature_card_widget.dart';
import '/components/main_feature_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_home_widget.dart' show DashboardHomeWidget;
import 'package:flutter/material.dart';

class DashboardHomeModel extends FlutterFlowModel<DashboardHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainFeatureCard component.
  late MainFeatureCardModel mainFeatureCardModel;
  // Model for featureCard component.
  late FeatureCardModel featureCardModel1;
  // Model for featureCard component.
  late FeatureCardModel featureCardModel2;
  // Model for featureCard component.
  late FeatureCardModel featureCardModel3;
  // Model for featureCard component.
  late FeatureCardModel featureCardModel4;
  // Model for featureCard component.
  late FeatureCardModel featureCardModel5;

  @override
  void initState(BuildContext context) {
    mainFeatureCardModel = createModel(context, () => MainFeatureCardModel());
    featureCardModel1 = createModel(context, () => FeatureCardModel());
    featureCardModel2 = createModel(context, () => FeatureCardModel());
    featureCardModel3 = createModel(context, () => FeatureCardModel());
    featureCardModel4 = createModel(context, () => FeatureCardModel());
    featureCardModel5 = createModel(context, () => FeatureCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mainFeatureCardModel.dispose();
    featureCardModel1.dispose();
    featureCardModel2.dispose();
    featureCardModel3.dispose();
    featureCardModel4.dispose();
    featureCardModel5.dispose();
  }
}
