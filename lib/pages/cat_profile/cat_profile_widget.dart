import '../../flutter/animations.dart';
import '../../flutter/theme.dart';
import '../../flutter/util.dart';
import '../../flutter/widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cat_profile_model.dart';
export 'cat_profile_model.dart';

class CatProfileWidget extends StatefulWidget {
  const CatProfileWidget({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.intelligence,
    required this.origin,
    required this.adaptability,
    required this.lifespan,
  });

  final String? image;
  final String? name;
  final String? description;
  final String? intelligence;
  final String? origin;
  final String? adaptability;
  final String? lifespan;

  @override
  State<CatProfileWidget> createState() => _CatProfileWidgetState();
}

class _CatProfileWidgetState extends State<CatProfileWidget>
    with TickerProviderStateMixin {
  late CatProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CatProfileModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: Offset(-1.396, 0),
            end: Offset(0, 0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: ThemeFlutter.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: ThemeFlutter.of(context).secondaryBackground,
          iconTheme: IconThemeData(color: ThemeFlutter.of(context).primaryText),
          automaticallyImplyLeading: true,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              widget!.name!,
              style: ThemeFlutter.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0.0,
                  ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.network(
                    widget!.image!,
                    width: double.infinity,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 870.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Country',
                            style:
                                ThemeFlutter.of(context).labelMedium.override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget!.origin!,
                                style:
                                    ThemeFlutter.of(context).bodyLarge.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                        ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 5.0,
                            thickness: 1.0,
                            color: ThemeFlutter.of(context).alternate,
                          ),
                          Text(
                            'Intelligence',
                            style:
                                ThemeFlutter.of(context).labelMedium.override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget!.intelligence!,
                                style:
                                    ThemeFlutter.of(context).bodyLarge.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                        ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 16.0,
                            thickness: 1.0,
                            color: ThemeFlutter.of(context).alternate,
                          ),
                          Text(
                            'Adaptability',
                            style:
                                ThemeFlutter.of(context).labelMedium.override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget!.adaptability!,
                                style:
                                    ThemeFlutter.of(context).bodyLarge.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                        ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 16.0,
                            thickness: 1.0,
                            color: ThemeFlutter.of(context).alternate,
                          ),
                          Text(
                            'Life span',
                            style:
                                ThemeFlutter.of(context).labelMedium.override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget!.lifespan!,
                                style:
                                    ThemeFlutter.of(context).bodyLarge.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                        ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 16.0,
                            thickness: 1.0,
                            color: ThemeFlutter.of(context).alternate,
                          ),
                          Text(
                            'Description',
                            style:
                                ThemeFlutter.of(context).labelMedium.override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Text(
                            widget!.description!,
                            style: ThemeFlutter.of(context).bodyMedium.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation']!),
                  ),
                ),
              ),
            ].addToEnd(SizedBox(height: 56.0)),
          ),
        ),
      ),
    );
  }
}
