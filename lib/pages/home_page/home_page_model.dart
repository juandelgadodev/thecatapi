import '/backend/api_requests/api_calls.dart';
import '../../flutter/animations.dart';
import '../../flutter/theme.dart';
import '../../flutter/util.dart';
import '../../flutter/widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends Model<HomePageWidget> {
  ///  Local state fields for this page.

  bool search = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (getBreedSearch)] action in TextField widget.
  ApiCallResponse? apiResultBreed;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
