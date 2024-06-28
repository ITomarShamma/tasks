import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'services_page_omar_model.dart';
export 'services_page_omar_model.dart';

class ServicesPageOmarWidget extends StatefulWidget {
  const ServicesPageOmarWidget({super.key});

  @override
  State<ServicesPageOmarWidget> createState() => _ServicesPageOmarWidgetState();
}

class _ServicesPageOmarWidgetState extends State<ServicesPageOmarWidget>
    with TickerProviderStateMixin {
  late ServicesPageOmarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesPageOmarModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).russianViolet,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).mauve,
              size: 30,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Services',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).mauve,
                  fontSize: 22,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w800,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).persianIndigo,
                FlutterFlowTheme.of(context).heliotrope
              ],
              stops: [0, 1],
              begin: AlignmentDirectional(1, -1),
              end: AlignmentDirectional(-1, 1),
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(0, -1),
            child: Column(
              children: [
                Align(
                  alignment: Alignment(1, 0),
                  child: FlutterFlowButtonTabBar(
                    useToggleButtonStyle: true,
                    labelStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800,
                            ),
                    unselectedLabelStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                            ),
                    labelColor: FlutterFlowTheme.of(context).primaryText,
                    unselectedLabelColor:
                        FlutterFlowTheme.of(context).secondaryText,
                    backgroundColor: FlutterFlowTheme.of(context).russianViolet,
                    unselectedBackgroundColor:
                        FlutterFlowTheme.of(context).persianIndigo,
                    borderColor: FlutterFlowTheme.of(context).frenchViolet,
                    borderWidth: 3,
                    borderRadius: 8,
                    elevation: 5,
                    labelPadding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                    buttonMargin: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    padding: EdgeInsets.all(4),
                    tabs: [
                      Tab(
                        text: 'Decoration',
                      ),
                      Tab(
                        text: 'Food',
                      ),
                      Tab(
                        text: 'Music',
                      ),
                    ],
                    controller: _model.tabBarController,
                    onTap: (i) async {
                      [() async {}, () async {}, () async {}][i]();
                    },
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _model.tabBarController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      KeepAliveWidgetWrapper(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/733ab634-5a82-4c40-9d4f-1159cb79b623.jpg',
                              ).image,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, -1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController1 ??=
                                            FormFieldController<String>(null),
                                    options: ['Option 1'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue1 = val),
                                    width: 300,
                                    height: 56,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .mauve,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                    hintText: 'ChairsNumber',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .russianViolet2,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).amethyst,
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 4),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController2 ??=
                                            FormFieldController<String>(null),
                                    options: ['Option 1'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue2 = val),
                                    width: 300,
                                    height: 56,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .mauve,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                    hintText: 'TablesNumber',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .russianViolet2,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).amethyst,
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 4),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController3 ??=
                                            FormFieldController<String>(null),
                                    options: ['Option 1'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue3 = val),
                                    width: 300,
                                    height: 56,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .mauve,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    hintText: 'Lighting',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .russianViolet2,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).amethyst,
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 4),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController4 ??=
                                            FormFieldController<String>(null),
                                    options: ['Option 1'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue4 = val),
                                    width: 300,
                                    height: 56,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .mauve,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                    hintText: 'Theme',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .russianViolet2,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).amethyst,
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 4),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController5 ??=
                                            FormFieldController<String>(null),
                                    options: ['Option 1'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue5 = val),
                                    width: 300,
                                    height: 56,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .mauve,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                    hintText: 'ThemeColor',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .russianViolet2,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).amethyst,
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 4),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          50, 0, 45, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .russianViolet,
                                              FlutterFlowTheme.of(context)
                                                  .persianIndigo,
                                              FlutterFlowTheme.of(context)
                                                  .frenchViolet,
                                              FlutterFlowTheme.of(context)
                                                  .heliotrope
                                            ],
                                            stops: [0, 1, 1, 1],
                                            begin: AlignmentDirectional(1, -1),
                                            end: AlignmentDirectional(-1, 1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .amethyst,
                                            width: 2,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding: EdgeInsets.all(2),
                                            child: FlutterFlowCheckboxGroup(
                                              options: [
                                                'Fancy WeddingReception',
                                                'Flowers'
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.checkboxGroupValues1 =
                                                      val),
                                              controller: _model
                                                      .checkboxGroupValueController1 ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [],
                                              ),
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .amethyst,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .russianViolet,
                                              checkboxBorderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .russianViolet,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .mauve,
                                                    letterSpacing: 0,
                                                  ),
                                              unselectedTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .mauve,
                                                        fontSize: 14,
                                                        letterSpacing: 0,
                                                      ),
                                              checkboxBorderRadius:
                                                  BorderRadius.circular(5),
                                              initialized:
                                                  _model.checkboxGroupValues1 !=
                                                      null,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 4)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      KeepAliveWidgetWrapper(
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/9e53e86f-2567-4b46-bc88-8cc4c43f5acb.jpg',
                              ).image,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, -1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController6 ??=
                                            FormFieldController<String>(null),
                                    options: ['Option 1'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue6 = val),
                                    width: 300,
                                    height: 56,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .mauve,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                    hintText: 'mainMeal',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .russianViolet2,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).amethyst,
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 4),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController7 ??=
                                            FormFieldController<String>(null),
                                    options: ['Option 1'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue7 = val),
                                    width: 300,
                                    height: 56,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .mauve,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                    hintText: 'SweatType',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .russianViolet2,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).amethyst,
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 4),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController8 ??=
                                            FormFieldController<String>(null),
                                    options: ['Option 1'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue8 = val),
                                    width: 300,
                                    height: 56,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .mauve,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                    hintText: 'mainCake',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .russianViolet2,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).amethyst,
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 4),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController9 ??=
                                            FormFieldController<String>(null),
                                    options: ['Option 1'],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue9 = val),
                                    width: 300,
                                    height: 56,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .mauve,
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                    hintText: 'more..',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .russianViolet2,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).amethyst,
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 16, 4),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          50, 0, 45, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .russianViolet,
                                              FlutterFlowTheme.of(context)
                                                  .persianIndigo,
                                              FlutterFlowTheme.of(context)
                                                  .frenchViolet,
                                              FlutterFlowTheme.of(context)
                                                  .heliotrope
                                            ],
                                            stops: [0, 1, 1, 1],
                                            begin: AlignmentDirectional(1, -1),
                                            end: AlignmentDirectional(-1, 1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .amethyst,
                                            width: 2,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding: EdgeInsets.all(2),
                                            child: FlutterFlowCheckboxGroup(
                                              options: [
                                                'Soft drinks',
                                                'Alcoholic beverages'
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.checkboxGroupValues2 =
                                                      val),
                                              controller: _model
                                                      .checkboxGroupValueController2 ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [],
                                              ),
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .amethyst,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .russianViolet,
                                              checkboxBorderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .russianViolet,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .mauve,
                                                    letterSpacing: 0,
                                                  ),
                                              unselectedTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .mauve,
                                                        fontSize: 14,
                                                        letterSpacing: 0,
                                                      ),
                                              checkboxBorderRadius:
                                                  BorderRadius.circular(5),
                                              initialized:
                                                  _model.checkboxGroupValues2 !=
                                                      null,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 4)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      KeepAliveWidgetWrapper(
                        builder: (context) => Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/773cc2ff-24e6-4ab6-921d-54833a986b19.jpg',
                              ).image,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownValueController10 ??=
                                          FormFieldController<String>(null),
                                  options: ['Option 1'],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue10 = val),
                                  width: 300,
                                  height: 56,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).mauve,
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                  hintText: 'MusicType',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .russianViolet2,
                                  elevation: 2,
                                  borderColor:
                                      FlutterFlowTheme.of(context).amethyst,
                                  borderWidth: 2,
                                  borderRadius: 8,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16, 4, 16, 4),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownValueController11 ??=
                                          FormFieldController<String>(null),
                                  options: ['Option 1'],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue11 = val),
                                  width: 300,
                                  height: 56,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).mauve,
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                  hintText: 'SongsList',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .russianViolet2,
                                  elevation: 2,
                                  borderColor:
                                      FlutterFlowTheme.of(context).amethyst,
                                  borderWidth: 2,
                                  borderRadius: 8,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16, 4, 16, 4),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownValueController12 ??=
                                          FormFieldController<String>(null),
                                  options: ['Option 1'],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue12 = val),
                                  width: 300,
                                  height: 56,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).mauve,
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                  hintText: 'More...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .russianViolet2,
                                  elevation: 2,
                                  borderColor:
                                      FlutterFlowTheme.of(context).amethyst,
                                  borderWidth: 2,
                                  borderRadius: 8,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16, 4, 16, 4),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 0, 45, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .russianViolet,
                                            FlutterFlowTheme.of(context)
                                                .persianIndigo,
                                            FlutterFlowTheme.of(context)
                                                .frenchViolet,
                                            FlutterFlowTheme.of(context)
                                                .heliotrope
                                          ],
                                          stops: [0, 1, 1, 1],
                                          begin: AlignmentDirectional(1, -1),
                                          end: AlignmentDirectional(-1, 1),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .amethyst,
                                          width: 2,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding: EdgeInsets.all(2),
                                          child: FlutterFlowCheckboxGroup(
                                            options: [
                                              'different Languages',
                                              'OurChoice'
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.checkboxGroupValues3 =
                                                    val),
                                            controller: _model
                                                    .checkboxGroupValueController3 ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [],
                                            ),
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .amethyst,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .russianViolet,
                                            checkboxBorderColor:
                                                FlutterFlowTheme.of(context)
                                                    .russianViolet,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .mauve,
                                                      letterSpacing: 0,
                                                    ),
                                            unselectedTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .mauve,
                                                      fontSize: 14,
                                                      letterSpacing: 0,
                                                    ),
                                            checkboxBorderRadius:
                                                BorderRadius.circular(5),
                                            initialized:
                                                _model.checkboxGroupValues3 !=
                                                    null,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, -1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 50, 0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'next',
                                      options: FFButtonOptions(
                                        width: 100,
                                        height: 40,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 0, 24, 0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                        color: FlutterFlowTheme.of(context)
                                            .persianIndigo,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mauve,
                                              fontSize: 20,
                                              letterSpacing: 3,
                                              fontWeight: FontWeight.w800,
                                            ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .russianViolet,
                                          width: 3,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 2)),
                            ),
                          ),
                        ),
                      ),
                    ],
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
