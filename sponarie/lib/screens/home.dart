import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController? textController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFA4C6F0),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(52, 47, 53, 40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        'https://picsum.photos/seed/100/600',
                        width: 270,
                        height: 132,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(93, 0, 93, 16),
                    child: Text(
                      'TRACK YOUR ORDER',
                      // style: FlutterFlowTheme.of(context).bodyText1.override(
                      //       fontFamily: 'Poppins',
                      //       fontSize: 20,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(92, 0, 93, 24),
                    child: Text(
                      'Enter your tracking number below',
                      // style: FlutterFlowTheme.of(context).bodyText1.override(
                      //       fontFamily: 'Poppins',
                      //       color: Colors.black,
                      //       fontSize: 12,
                      //       fontWeight: FontWeight.w500,
                      //     ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 23, 30),
                      child: TextFormField(
                        controller: textController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Tracking number',
                          //hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        // style: FlutterFlowTheme.of(context).bodyText1.override(
                        //       fontFamily: 'Inter',
                        //       color: Color(0x4B000000),
                        //       fontWeight: FontWeight.w500,
                        //     ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 22, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      Text('TRACK YOUR ORDER'),
                      options: FFButtonOptions(
                        width: 336,
                        height: 45,
                        color: Color(0xFF047CE3),
                        textStyle:
                            // FlutterFlowTheme.of(context).subtitle2.override(
                            //       fontFamily: 'Inter',
                            //       color: Colors.white,
                            //       fontSize: 14,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ), child: null,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
