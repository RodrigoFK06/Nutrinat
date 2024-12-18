import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/add_address_base/add_address_base_widget.dart';
import '/components/gradient_button/gradient_button_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/components/u_i_marker/u_i_marker_widget.dart';
import '/dropdowns/modal_add_address/modal_add_address_widget.dart';
import '/dropdowns/modal_create_account/modal_create_account_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'checkout_full_page_model.dart';
export 'checkout_full_page_model.dart';

class CheckoutFullPageWidget extends StatefulWidget {
  const CheckoutFullPageWidget({
    super.key,
    required this.subPage,
    String? subPageName,
    this.productRef,
  }) : subPageName = subPageName ?? 'Mi carrito';

  final bool? subPage;
  final String subPageName;
  final ProductsRecord? productRef;

  @override
  State<CheckoutFullPageWidget> createState() => _CheckoutFullPageWidgetState();
}

class _CheckoutFullPageWidgetState extends State<CheckoutFullPageWidget>
    with TickerProviderStateMixin {
  late CheckoutFullPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckoutFullPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.stepNumber = 1;
      safeSetState(() {});
      if ((currentUserDocument?.addresses.toList() ?? []).isNotEmpty) {
        _model.address =
            (currentUserDocument?.addresses.toList() ?? []).firstOrNull;
        safeSetState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Tu dirección predefinida está puesta.',
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: FlutterFlowTheme.of(context).info,
                    letterSpacing: 0.0,
                  ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      } else {
        return;
      }
    });

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: true);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, -70.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'checkout_FullPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    wrapWithModel(
                      model: _model.topNavModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const TopNavWidget(),
                    ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 1170.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 0.0, 0.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.gradientButtonModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: GradientButtonWidget(
                                            action: () async {
                                              context.pushNamed(
                                                'mainHomePage',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        if (widget.subPage == true)
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 4.0, 0.0),
                                            child: Icon(
                                              Icons.chevron_right_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 16.0,
                                            ),
                                          ),
                                        if (widget.subPage == true)
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.safePop();
                                            },
                                            child: Container(
                                              height: 32.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    widget.subPageName,
                                                    'Page Name',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 16.0,
                                          ),
                                        ),
                                        Container(
                                          height: 32.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Text(
                                              'Ir a pagar',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).animateOnPageLoad(
                                      animationsMap['rowOnPageLoadAnimation']!),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 44.0),
                                  child: Wrap(
                                    spacing: 16.0,
                                    runSpacing: 16.0,
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        constraints: const BoxConstraints(
                                          maxWidth: 670.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Ingresa los datos necesarios',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 12.0),
                                                child: Text(
                                                  'Debajo tendrás los productos que has elegido.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    4.0,
                                                                    8.0,
                                                                    8.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          child:
                                                              ExpandableNotifier(
                                                            controller: _model
                                                                .expandableExpandableController1,
                                                            child:
                                                                ExpandablePanel(
                                                              header: Text(
                                                                'Dirección',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              collapsed:
                                                                  Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Text(
                                                                  'Por favor, ingresa tus datos para poder continuar.',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              expanded: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Por favor, ingresa tus datos para poder continuar.',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  if ((currentUserDocument?.addresses.toList() ??
                                                                              []).isEmpty)
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              wrapWithModel(
                                                                        model: _model
                                                                            .addAddressBaseModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        updateOnChange:
                                                                            true,
                                                                        child:
                                                                            AddAddressBaseWidget(
                                                                          action:
                                                                              () async {
                                                                            // addAddress_Account

                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'addresses': FieldValue.arrayUnion([
                                                                                    getAddressFirestoreData(
                                                                                      updateAddressStruct(
                                                                                        AddressStruct(
                                                                                          defaultAddress: true,
                                                                                          addressName: _model.addAddressBaseModel.addressTextController.text,
                                                                                          address: _model.addAddressBaseModel.addressTextController.text,
                                                                                          address2: _model.addAddressBaseModel.clonableURLTextController.text,
                                                                                          city: _model.addAddressBaseModel.cityTextController.text,
                                                                                          state: _model.addAddressBaseModel.stateTextController.text,
                                                                                          postalCode: int.tryParse(_model.addAddressBaseModel.zipTextController.text),
                                                                                        ),
                                                                                        clearUnsetFields: false,
                                                                                      ),
                                                                                      true,
                                                                                    )
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                            _model.stepNumber =
                                                                                _model.stepNumber + 1;
                                                                            _model.updateAddressStruct(
                                                                              (e) => e
                                                                                ..addressName = _model.addAddressBaseModel.addressTextController.text
                                                                                ..address = _model.addAddressBaseModel.clonableURLTextController.text
                                                                                ..address2 = _model.addAddressBaseModel.clonableURLTextController.text
                                                                                ..city = _model.addAddressBaseModel.cityTextController.text
                                                                                ..state = _model.addAddressBaseModel.stateTextController.text
                                                                                ..postalCode = int.tryParse(_model.addAddressBaseModel.zipTextController.text),
                                                                            );
                                                                            safeSetState(() {});
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  if ((currentUserDocument?.addresses.toList() ??
                                                                              []).isNotEmpty)
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Tus direcciones guardadas',
                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Builder(
                                                                                builder: (context) => FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: 12.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                  icon: Icon(
                                                                                    Icons.add_business_rounded,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await showDialog(
                                                                                      barrierColor: Colors.transparent,
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: GestureDetector(
                                                                                            onTap: () {
                                                                                              FocusScope.of(dialogContext).unfocus();
                                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                                            },
                                                                                            child: const ModalAddAddressWidget(),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Builder(
                                                                            builder:
                                                                                (context) {
                                                                              final addresses = (currentUserDocument?.addresses.toList() ?? []).toList();

                                                                              return ListView.separated(
                                                                                padding: const EdgeInsets.fromLTRB(
                                                                                  0,
                                                                                  12.0,
                                                                                  0,
                                                                                  16.0,
                                                                                ),
                                                                                primary: false,
                                                                                shrinkWrap: true,
                                                                                scrollDirection: Axis.vertical,
                                                                                itemCount: addresses.length,
                                                                                separatorBuilder: (_, __) => const SizedBox(height: 4.0),
                                                                                itemBuilder: (context, addressesIndex) {
                                                                                  final addressesItem = addresses[addressesIndex];
                                                                                  return InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      _model.address = addressesItem;
                                                                                      _model.stepNumber = 2;
                                                                                      safeSetState(() {});
                                                                                    },
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      decoration: BoxDecoration(
                                                                                        color: addressesItem.address == _model.address?.address ? FlutterFlowTheme.of(context).accent2 : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(12.0),
                                                                                        border: Border.all(
                                                                                          color: addressesItem.address == _model.address?.address ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsets.all(8.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      addressesItem.addressName,
                                                                                                      '--',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                    child: RichText(
                                                                                                      textScaler: MediaQuery.of(context).textScaler,
                                                                                                      text: TextSpan(
                                                                                                        children: [
                                                                                                          TextSpan(
                                                                                                            text: addressesItem.address,
                                                                                                            style: const TextStyle(),
                                                                                                          ),
                                                                                                          const TextSpan(
                                                                                                            text: ', ',
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: addressesItem.address2,
                                                                                                            style: const TextStyle(),
                                                                                                          ),
                                                                                                          const TextSpan(
                                                                                                            text: ' ',
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              addressesItem.city,
                                                                                                              '--',
                                                                                                            ),
                                                                                                            style: const TextStyle(),
                                                                                                          ),
                                                                                                          const TextSpan(
                                                                                                            text: ', ',
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              addressesItem.state,
                                                                                                              '--',
                                                                                                            ),
                                                                                                            style: const TextStyle(),
                                                                                                          ),
                                                                                                          const TextSpan(
                                                                                                            text: ' ',
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              addressesItem.postalCode.toString(),
                                                                                                              '--',
                                                                                                            ),
                                                                                                            style: const TextStyle(),
                                                                                                          )
                                                                                                        ],
                                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                              fontFamily: 'Outfit',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(1.0, -1.0),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 16.0),
                                                                                                child: Icon(
                                                                                                  Icons.check_circle_rounded,
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    addressesItem.address == _model.address?.address ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              theme:
                                                                  ExpandableThemeData(
                                                                tapHeaderToExpand:
                                                                    true,
                                                                tapBodyToExpand:
                                                                    false,
                                                                tapBodyToCollapse:
                                                                    false,
                                                                headerAlignment:
                                                                    ExpandablePanelHeaderAlignment
                                                                        .center,
                                                                hasIcon: true,
                                                                expandIcon: Icons
                                                                    .chevron_right_rounded,
                                                                collapseIcon: Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                iconColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                iconPadding:
                                                                    const EdgeInsets
                                                                        .fromLTRB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (_model.stepNumber >=
                                                          2)
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .uIMarkerModel1,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                const UIMarkerWidget(),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    4.0,
                                                                    8.0,
                                                                    8.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          child:
                                                              ExpandableNotifier(
                                                            controller: _model
                                                                .expandableExpandableController2,
                                                            child:
                                                                ExpandablePanel(
                                                              header: Text(
                                                                'Opciones de delivery',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              collapsed:
                                                                  Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Text(
                                                                  'Por favor, ingresa tus datos para poder continuar.',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              expanded: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Por favor, ingresa tus datos para poder continuar.',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final shippingOptions = FFAppState()
                                                                          .shippingOptions
                                                                          .toList();

                                                                      return ListView
                                                                          .builder(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            shippingOptions.length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                shippingOptionsIndex) {
                                                                          final shippingOptionsItem =
                                                                              shippingOptions[shippingOptionsIndex];
                                                                          return Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                12.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                _model.shippingOption = shippingOptionsItem;
                                                                                safeSetState(() {});
                                                                                _model.stepNumber = _model.stepNumber + 1;
                                                                                safeSetState(() {});
                                                                              },
                                                                              child: AnimatedContainer(
                                                                                duration: const Duration(milliseconds: 100),
                                                                                curve: Curves.easeInOut,
                                                                                width: double.infinity,
                                                                                decoration: BoxDecoration(
                                                                                  color: shippingOptionsItem.shippingName == _model.shippingOption?.shippingName ? FlutterFlowTheme.of(context).accent2 : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                  border: Border.all(
                                                                                    color: shippingOptionsItem.shippingName == _model.shippingOption?.shippingName ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).alternate,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(12.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              shippingOptionsItem.shippingName,
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                              child: RichText(
                                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                                text: TextSpan(
                                                                                                  children: [
                                                                                                    TextSpan(
                                                                                                      text: shippingOptionsItem.description,
                                                                                                      style: const TextStyle(),
                                                                                                    )
                                                                                                  ],
                                                                                                  style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                        fontFamily: 'Outfit',
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        formatNumber(
                                                                                          shippingOptionsItem.price,
                                                                                          formatType: FormatType.decimal,
                                                                                          decimalType: DecimalType.automatic,
                                                                                          currency: 'S/.',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 16.0)),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              theme:
                                                                  ExpandableThemeData(
                                                                tapHeaderToExpand:
                                                                    true,
                                                                tapBodyToExpand:
                                                                    false,
                                                                tapBodyToCollapse:
                                                                    false,
                                                                headerAlignment:
                                                                    ExpandablePanelHeaderAlignment
                                                                        .center,
                                                                hasIcon: true,
                                                                expandIcon: Icons
                                                                    .chevron_right_rounded,
                                                                collapseIcon: Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                iconColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                iconPadding:
                                                                    const EdgeInsets
                                                                        .fromLTRB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (_model.stepNumber >=
                                                          3)
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, -1.35),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .uIMarkerModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                const UIMarkerWidget(),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    4.0,
                                                                    8.0,
                                                                    8.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          child:
                                                              ExpandableNotifier(
                                                            controller: _model
                                                                .expandableExpandableController3,
                                                            child:
                                                                ExpandablePanel(
                                                              header: Text(
                                                                'Métodos de pago',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              collapsed:
                                                                  Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Text(
                                                                  'Por favor, ingresa tus datos para poder continuar.',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              expanded: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Por favor, ingresa tus datos para poder continuar.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    constraints:
                                                                        const BoxConstraints(
                                                                      maxWidth:
                                                                          700.0,
                                                                      maxHeight:
                                                                          600.0,
                                                                    ),
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                10.0),
                                                                            child:
                                                                                Container(
                                                                              constraints: const BoxConstraints(
                                                                                maxWidth: 400.0,
                                                                                maxHeight: 250.0,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                image: DecorationImage(
                                                                                  fit: BoxFit.cover,
                                                                                  image: Image.network(
                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/card-u-i-9c4s01/assets/4ryi90e8nyhk/card_2.1.png',
                                                                                  ).image,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(25.0),
                                                                                shape: BoxShape.rectangle,
                                                                                border: Border.all(
                                                                                  color: const Color(0xFF7A7A7A),
                                                                                  width: 1.5,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(27.0, 0.0, 27.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Balance',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Saira',
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                                                                                      child: Text(
                                                                                        'S/.*****.**',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Saira',
                                                                                              color: Colors.white,
                                                                                              fontSize: 20.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            _model.textController3.text,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: Colors.white,
                                                                                                  fontSize: 10.0,
                                                                                                  letterSpacing: 1.0,
                                                                                                ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                              child: ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                child: Image.network(
                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/card-u-i-9c4s01/assets/su33fq342v8t/chip_2.png',
                                                                                                  width: 40.0,
                                                                                                  height: 40.0,
                                                                                                  fit: BoxFit.contain,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Text(
                                                                                                'VENCE FIN DE',
                                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                      fontFamily: 'Saira',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                '${_model.textController4.text}/${_model.textController5.text}',
                                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 13.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                                              children: [
                                                                                                Text(
                                                                                                  'A NOMBRE DE',
                                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                        fontFamily: 'Saira',
                                                                                                        color: Colors.white,
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  '${_model.textController1.text} ${_model.textController2.text}',
                                                                                                  style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        color: Colors.white,
                                                                                                        fontSize: 13.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w300,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        child: Image.network(
                                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/card-u-i-9c4s01/assets/lyxsszue47vz/visa.png',
                                                                                          width: 55.0,
                                                                                          height: 30.0,
                                                                                          fit: BoxFit.contain,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.textController1,
                                                                                  focusNode: _model.textFieldFocusNode1,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    isDense: false,
                                                                                    labelText: 'Tus nombres',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textAlign: TextAlign.start,
                                                                                  validator: _model.textController1Validator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.textController2,
                                                                                  focusNode: _model.textFieldFocusNode2,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    isDense: false,
                                                                                    labelText: 'Tus apellidos',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  validator: _model.textController2Validator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.textController3,
                                                                                  focusNode: _model.textFieldFocusNode3,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: 'Número de la tarjeta (sin espacios)',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  keyboardType: TextInputType.number,
                                                                                  validator: _model.textController3Validator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.textController4,
                                                                                  focusNode: _model.textFieldFocusNode4,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: 'Mes',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  keyboardType: TextInputType.datetime,
                                                                                  validator: _model.textController4Validator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.textController5,
                                                                                  focusNode: _model.textFieldFocusNode5,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: 'Año (Ej.2027)',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  keyboardType: TextInputType.datetime,
                                                                                  validator: _model.textController5Validator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.textController6,
                                                                                  focusNode: _model.textFieldFocusNode6,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: 'CVV',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textAlign: TextAlign.start,
                                                                                  keyboardType: TextInputType.number,
                                                                                  validator: _model.textController6Validator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.textController7,
                                                                                  focusNode: _model.textFieldFocusNode7,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: 'DNI',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textAlign: TextAlign.start,
                                                                                  keyboardType: TextInputType.number,
                                                                                  validator: _model.textController7Validator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              20.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    _model.getTokenCard = await GetTokenCardCall.call(
                                                                                      accessToken: 'APP_USR-4841127657432332-060819-fb5ac35608a79a8a206777b0c183efd0-1848213391',
                                                                                      publicKey: 'APP_USR-906a4b6e-157b-4477-9158-5f7199870409',
                                                                                      cardNumber: _model.textController3.text,
                                                                                      cardholderName: '${_model.textController1.text} ${_model.textController2.text}',
                                                                                      securityCode: _model.textController6.text,
                                                                                      cardExpirationMonth: int.tryParse(_model.textController4.text),
                                                                                      cardExpirationYear: int.tryParse(_model.textController5.text),
                                                                                      identificationType: 'DNI',
                                                                                      identificationNumber: _model.textController7.text,
                                                                                    );

                                                                                    if ((_model.getTokenCard?.succeeded ?? true)) {
                                                                                      FFAppState().IdCard = getJsonField(
                                                                                        (_model.getTokenCard?.jsonBody ?? ''),
                                                                                        r'''$.id''',
                                                                                      ).toString();
                                                                                      safeSetState(() {});
                                                                                      FFAppState().checkoutSubtotal = valueOrDefault<double>(
                                                                                        functions.priceSummary(FFAppState().cartPriceSummary.toList()),
                                                                                        0.00,
                                                                                      );
                                                                                      safeSetState(() {});
                                                                                      FFAppState().checkoutIGV = valueOrDefault<double>(
                                                                                        ((functions.priceSummary(FFAppState().cartPriceSummary.toList())!) * 0.18),
                                                                                        0.00,
                                                                                      );
                                                                                      safeSetState(() {});
                                                                                      FFAppState().checkoutTotal = valueOrDefault<double>(
                                                                                        ((functions.priceSummary(FFAppState().cartPriceSummary.toList())!)) + ((functions.priceSummary(FFAppState().cartPriceSummary.toList())!) * 0.18),
                                                                                        0.00,
                                                                                      );
                                                                                      safeSetState(() {});
                                                                                      FFAppState().numberToText = functions.numberToWords(FFAppState().checkoutTotal);
                                                                                      safeSetState(() {});
                                                                                      FFAppState().TotalAmountMercadoPago = ((functions.priceSummary(FFAppState().cartPriceSummary.toList())!)) + (functions.formatToTwoDecimals(FFAppState().checkoutIGV)) + ((functions.priceSummary(FFAppState().cartPriceSummary.toList())!) * 0.03) + _model.shippingOption!.price;
                                                                                      safeSetState(() {});
                                                                                      FFAppState().TotalAmountMercadoPago = functions.formatToTwoDecimals(FFAppState().TotalAmountMercadoPago);
                                                                                      safeSetState(() {});
                                                                                      _model.sugesteduuid = await UuidCall.call();

                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'Tarjeta cargada con éxito',
                                                                                            style: TextStyle(
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                          ),
                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                        ),
                                                                                      );
                                                                                    } else {
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'No se pudo crear la tarjeta',
                                                                                            style: TextStyle(
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                          ),
                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                          backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                        ),
                                                                                      );
                                                                                    }

                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  text: 'Continuar',
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Colors.white,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              theme:
                                                                  ExpandableThemeData(
                                                                tapHeaderToExpand:
                                                                    true,
                                                                tapBodyToExpand:
                                                                    false,
                                                                tapBodyToCollapse:
                                                                    false,
                                                                headerAlignment:
                                                                    ExpandablePanelHeaderAlignment
                                                                        .center,
                                                                hasIcon: true,
                                                                expandIcon: Icons
                                                                    .chevron_right_rounded,
                                                                collapseIcon: Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                iconColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                iconPadding:
                                                                    const EdgeInsets
                                                                        .fromLTRB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (_model.stepNumber >=
                                                          4)
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .uIMarkerModel3,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                const UIMarkerWidget(),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        constraints: const BoxConstraints(
                                          maxWidth: 430.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 24.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Resumen de compras',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 12.0),
                                                child: Text(
                                                  'Costo de tus productos.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Divider(
                                                height: 32.0,
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 24.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: Text(
                                                        'Flujo de precios',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Subtotal',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                functions.priceSummary(
                                                                    FFAppState()
                                                                        .cartPriceSummary
                                                                        .toList()),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                                currency: 'S/.',
                                                              ),
                                                              '0.00',
                                                            ),
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'IGV',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                ((functions.priceSummary(FFAppState()
                                                                        .cartPriceSummary
                                                                        .toList())!) *
                                                                    0.18),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                                currency: 'S/.',
                                                              ),
                                                              '0.00',
                                                            ),
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Impuesto de app',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                ((functions.priceSummary(FFAppState()
                                                                        .cartPriceSummary
                                                                        .toList())!) *
                                                                    0.03),
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                                currency: 'S/.',
                                                              ),
                                                              '0.00',
                                                            ),
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (_model.shippingOption !=
                                                        null)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Delivery',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    _model
                                                                        .shippingOption
                                                                        ?.shippingName,
                                                                    '--',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              formatNumber(
                                                                _model
                                                                    .shippingOption!
                                                                    .price,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                                currency: 'S/.',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 4.0)),
                                                        ),
                                                      ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Total',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    30.0,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    36.0,
                                                                icon: Icon(
                                                                  Icons
                                                                      .info_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 18.0,
                                                                ),
                                                                onPressed: () {
                                                                  print(
                                                                      'IconButton pressed ...');
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                          if (_model
                                                                  .shippingOption ==
                                                              null)
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                formatNumber(
                                                                  ((functions.priceSummary(FFAppState()
                                                                          .cartPriceSummary
                                                                          .toList())!)) +
                                                                      ((functions.priceSummary(FFAppState()
                                                                              .cartPriceSummary
                                                                              .toList())!) *
                                                                          0.18) +
                                                                      ((functions.priceSummary(FFAppState()
                                                                              .cartPriceSummary
                                                                              .toList())!) *
                                                                          0.03),
                                                                  formatType:
                                                                      FormatType
                                                                          .decimal,
                                                                  decimalType:
                                                                      DecimalType
                                                                          .automatic,
                                                                  currency:
                                                                      'S/.',
                                                                ),
                                                                '0.00',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          if (_model
                                                                  .shippingOption !=
                                                              null)
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                formatNumber(
                                                                  ((functions.priceSummary(FFAppState()
                                                                          .cartPriceSummary
                                                                          .toList())!)) +
                                                                      ((functions.priceSummary(FFAppState()
                                                                              .cartPriceSummary
                                                                              .toList())!) *
                                                                          0.18) +
                                                                      ((functions.priceSummary(FFAppState()
                                                                              .cartPriceSummary
                                                                              .toList())!) *
                                                                          0.03) +
                                                                      _model
                                                                          .shippingOption!
                                                                          .price,
                                                                  formatType:
                                                                      FormatType
                                                                          .decimal,
                                                                  decimalType:
                                                                      DecimalType
                                                                          .automatic,
                                                                  currency:
                                                                      'S/.',
                                                                ),
                                                                '0.00',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  if ((currentUserReference !=
                                                          null) &&
                                                      (_model.shippingOption !=
                                                          null)) {
                                                    FFAppState()
                                                            .checkoutSubtotal =
                                                        valueOrDefault<double>(
                                                      functions.priceSummary(
                                                          FFAppState()
                                                              .cartPriceSummary
                                                              .toList()),
                                                      0.00,
                                                    );
                                                    safeSetState(() {});
                                                    FFAppState().checkoutIGV =
                                                        valueOrDefault<double>(
                                                      ((functions.priceSummary(
                                                              FFAppState()
                                                                  .cartPriceSummary
                                                                  .toList())!) *
                                                          0.18),
                                                      0.00,
                                                    );
                                                    safeSetState(() {});
                                                    FFAppState().checkoutTotal =
                                                        valueOrDefault<double>(
                                                      ((functions.priceSummary(
                                                              FFAppState()
                                                                  .cartPriceSummary
                                                                  .toList())!)) +
                                                          ((functions.priceSummary(
                                                                  FFAppState()
                                                                      .cartPriceSummary
                                                                      .toList())!) *
                                                              0.18),
                                                      0.00,
                                                    );
                                                    safeSetState(() {});
                                                    FFAppState().numberToText =
                                                        functions.numberToWords(
                                                            FFAppState()
                                                                .checkoutTotal);
                                                    safeSetState(() {});
                                                    FFAppState().TotalAmountMercadoPago = ((functions
                                                            .priceSummary(FFAppState()
                                                                .cartPriceSummary
                                                                .toList())!)) +
                                                        (functions
                                                            .formatToTwoDecimals(
                                                                FFAppState()
                                                                    .checkoutIGV)) +
                                                        ((functions.priceSummary(
                                                                FFAppState()
                                                                    .cartPriceSummary
                                                                    .toList())!) *
                                                            0.03) +
                                                        _model.shippingOption!
                                                            .price;
                                                    safeSetState(() {});
                                                    FFAppState()
                                                            .TotalAmountMercadoPago =
                                                        functions
                                                            .formatToTwoDecimals(
                                                                FFAppState()
                                                                    .TotalAmountMercadoPago);
                                                    safeSetState(() {});
                                                    _model.uuidOut =
                                                        await UuidCall.call();

                                                    _model.apiResultgu3 =
                                                        await PayCardCall.call(
                                                      accessToken:
                                                          'APP_USR-4841127657432332-060819-fb5ac35608a79a8a206777b0c183efd0-1848213391',
                                                      transactionAmount:
                                                          FFAppState()
                                                              .TotalAmountMercadoPago,
                                                      token: getJsonField(
                                                        (_model.getTokenCard
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.id''',
                                                      ).toString(),
                                                      firstName: _model
                                                          .textController1.text,
                                                      lastName: _model
                                                          .textController2.text,
                                                      email: currentUserEmail,
                                                      zipCode: _model
                                                          .address?.postalCode
                                                          .toString(),
                                                      streetName: _model
                                                          .address?.addressName,
                                                      streetNumber: '28',
                                                      neighborhood:
                                                          'San Isidro',
                                                      city:
                                                          _model.address?.city,
                                                      federalUnit: '1234',
                                                      description:
                                                          'Canasta de productos naturales marca Nutrinat',
                                                      idempotencyKey:
                                                          getJsonField(
                                                        (_model.uuidOut
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$[0]''',
                                                      ).toString(),
                                                      identificationType:
                                                          getJsonField(
                                                        (_model.getTokenCard
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.cardholder.identification.type''',
                                                      ).toString(),
                                                      identificationNumber:
                                                          getJsonField(
                                                        (_model.getTokenCard
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.cardholder.identification.number''',
                                                      ).toString(),
                                                    );

                                                    if ((_model.apiResultgu3
                                                            ?.succeeded ??
                                                        true)) {
                                                      // createOrder

                                                      await OrdersRecord
                                                          .collection
                                                          .doc()
                                                          .set({
                                                        ...createOrdersRecordData(
                                                          name:
                                                              'Pedido de $currentUserDisplayName',
                                                          amount:
                                                              valueOrDefault<
                                                                  double>(
                                                            FFAppState()
                                                                .TotalAmountMercadoPago,
                                                            10.0,
                                                          ),
                                                          status: 'Pendiente',
                                                          tax: valueOrDefault<
                                                              double>(
                                                            ((functions.priceSummary(
                                                                    FFAppState()
                                                                        .cartPriceSummary
                                                                        .toList())!) *
                                                                0.18),
                                                            0.00,
                                                          ),
                                                          createdAt:
                                                              getCurrentTimestamp,
                                                          userPurchased:
                                                              currentUserReference,
                                                          address:
                                                              updateAddressStruct(
                                                            _model.address,
                                                            clearUnsetFields:
                                                                false,
                                                            create: true,
                                                          ),
                                                          vendorName:
                                                              'Nutrinat',
                                                          shippingSelected:
                                                              updateShippingOptionsStruct(
                                                            _model
                                                                .shippingOption,
                                                            clearUnsetFields:
                                                                false,
                                                            create: true,
                                                          ),
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'itemsOrdered':
                                                                FFAppState()
                                                                    .cartItems
                                                                    .map((e) =>
                                                                        e.itemRef)
                                                                    .withoutNulls
                                                                    .toList(),
                                                            'quanity':
                                                                getCartItemListFirestoreData(
                                                              FFAppState()
                                                                  .cartItems,
                                                            ),
                                                          },
                                                        ),
                                                      });
                                                      _model.suggested =
                                                          await LastDocumentCall
                                                              .call();

                                                      FFAppState()
                                                              .suggestedNumber =
                                                          getJsonField(
                                                        (_model.suggested
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.suggestedNumber''',
                                                      ).toString();
                                                      safeSetState(() {});
                                                      _model.bill =
                                                          await SendBillCall
                                                              .call(
                                                        ruc: '10707844049',
                                                        suggestedNumber:
                                                            getJsonField(
                                                          (_model.suggested
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.suggestedNumber''',
                                                        ).toString(),
                                                        initialDate:
                                                            '2024-06-20',
                                                        initialHour: '12:23:40',
                                                        numberTotext:
                                                            FFAppState()
                                                                .numberToText,
                                                        businessName:
                                                            'REYES REYES MERCEDES YANIRA',
                                                        businessDirection:
                                                            'CAL. FRANCISCO BOLOGNESI MZA. F LOTE. 10 FND. FUNDO LAS ANIMAS TRUJILLO TRUJILLO LA LIBERTAD',
                                                        dni: getJsonField(
                                                          (_model.getTokenCard
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.cardholder.identification.number''',
                                                        ).toString(),
                                                        customerName:
                                                            currentUserDisplayName,
                                                        customerAddres: _model
                                                            .address?.address,
                                                        totalIgv: functions
                                                            .formatToTwoDecimals(
                                                                FFAppState()
                                                                    .checkoutIGV),
                                                        oPgravada: FFAppState()
                                                            .checkoutSubtotal,
                                                        totalAmount: functions
                                                            .formatToTwoDecimals(
                                                                FFAppState()
                                                                    .checkoutTotal),
                                                        index: 1,
                                                        productType: 'NIU',
                                                        productQuantity: 1,
                                                        productDescription:
                                                            'Canasta de productos naturales marca Nutrinat.',
                                                        priceWithoutIgv:
                                                            FFAppState()
                                                                .checkoutSubtotal,
                                                        totalIGVP: functions
                                                            .formatToTwoDecimals(
                                                                FFAppState()
                                                                    .checkoutIGV),
                                                        oPgravadaP: FFAppState()
                                                            .checkoutSubtotal,
                                                        totalAmountP: functions
                                                            .formatToTwoDecimals(
                                                                FFAppState()
                                                                    .checkoutTotal),
                                                      );

                                                      FFAppState().SunatPDF =
                                                          'https://apisunat.com/api/documents/${getJsonField(
                                                        (_model.bill
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.documentId''',
                                                      ).toString()}/getPDF/ticket58mm/10707844049-03-B001-${getJsonField(
                                                        (_model.suggested
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.suggestedNumber''',
                                                      ).toString()}.pdf';
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        'successPage',
                                                        queryParameters: {
                                                          'orderTotal':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                double>(
                                                              ((functions.priceSummary(
                                                                      FFAppState()
                                                                          .cartPriceSummary
                                                                          .toList())!)) +
                                                                  ((functions.priceSummary(FFAppState()
                                                                          .cartPriceSummary
                                                                          .toList())!) *
                                                                      0.18) +
                                                                  ((functions.priceSummary(FFAppState()
                                                                          .cartPriceSummary
                                                                          .toList())!) *
                                                                      0.03) +
                                                                  _model
                                                                      .shippingOption!
                                                                      .price,
                                                              0.00,
                                                            ),
                                                            ParamType.double,
                                                          ),
                                                        }.withoutNulls,
                                                      );

                                                      FFAppState().cart = [];
                                                      FFAppState()
                                                          .cartPriceSummary = [];
                                                      FFAppState().cartItems =
                                                          [];
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Error',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    }
                                                  } else if (_model
                                                          .stepNumber ==
                                                      4) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Por favor completa los campos para continuar.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    );
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Necesitas tener una cuenta!',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      barrierColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                const ModalCreateAccountWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  }

                                                  safeSetState(() {});
                                                },
                                                text: 'Pagar',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 48.0,
                                                  padding: const EdgeInsets.all(0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  elevation: 2.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent1,
                                                  hoverBorderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                  hoverTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                ),
                                              ),
                                            ],
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
