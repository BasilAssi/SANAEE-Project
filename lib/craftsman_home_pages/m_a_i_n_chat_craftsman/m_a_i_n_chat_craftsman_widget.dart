import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_messages/empty_messages_widget.dart';
import '/components/nav_bar_craftsman/nav_bar_craftsman_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/d_e_t_a_i_l_s_chat/d_e_t_a_i_l_s_chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_a_i_n_chat_craftsman_model.dart';
export 'm_a_i_n_chat_craftsman_model.dart';

class MAINChatCraftsmanWidget extends StatefulWidget {
  const MAINChatCraftsmanWidget({Key? key}) : super(key: key);

  @override
  _MAINChatCraftsmanWidgetState createState() =>
      _MAINChatCraftsmanWidgetState();
}

class _MAINChatCraftsmanWidgetState extends State<MAINChatCraftsmanWidget> {
  late MAINChatCraftsmanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MAINChatCraftsmanModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).darkText,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'rhzabwn4' /* Messages */,
          ),
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).tertiary,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 1.0,
      ),
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
              child: StreamBuilder<List<ChatsRecord>>(
                stream: queryChatsRecord(
                  queryBuilder: (chatsRecord) => chatsRecord
                      .where('users', arrayContains: currentUserReference)
                      .orderBy('last_message_time', descending: true),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitThreeBounce(
                          color: FlutterFlowTheme.of(context).primary,
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  List<ChatsRecord> listViewChatsRecordList = snapshot.data!;
                  if (listViewChatsRecordList.isEmpty) {
                    return Center(
                      child: EmptyMessagesWidget(
                        title: 'No Messages',
                        bodyText:
                            'Once you apply to jobs your messages for that job post will live here.',
                      ),
                    );
                  }
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewChatsRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewChatsRecord =
                          listViewChatsRecordList[listViewIndex];
                      return StreamBuilder<ChatsRecord>(
                        stream: ChatsRecord.getDocument(
                            listViewChatsRecord.reference),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitThreeBounce(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          final chatPreviewChatsRecord = snapshot.data!;
                          return StreamBuilder<FFChatInfo>(
                            stream: FFChatManager.instance.getChatInfo(
                                chatRecord: chatPreviewChatsRecord),
                            builder: (context, snapshot) {
                              final chatInfo = snapshot.data ??
                                  FFChatInfo(chatPreviewChatsRecord);
                              return FFChatPreview(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DETAILSChatWidget(
                                      chatUser: chatInfo.otherUsers.length == 1
                                          ? chatInfo.otherUsersList.first
                                          : null,
                                      chatRef: chatInfo.chatRecord.reference,
                                    ),
                                  ),
                                ),
                                lastChatText: chatInfo.chatPreviewMessage(),
                                lastChatTime:
                                    chatPreviewChatsRecord.lastMessageTime,
                                seen: chatPreviewChatsRecord.lastMessageSeenBy!
                                    .contains(currentUserReference),
                                title: chatInfo.chatPreviewTitle(),
                                userProfilePic: chatInfo.chatPreviewPic(),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                unreadColor:
                                    FlutterFlowTheme.of(context).secondary,
                                titleTextStyle: GoogleFonts.getFont(
                                  'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                                dateTextStyle: GoogleFonts.getFont(
                                  'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),
                                previewTextStyle: GoogleFonts.getFont(
                                  'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 3.0, 12.0, 3.0),
                                borderRadius: BorderRadius.circular(0.0),
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.02, 0.98),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Container(
                  width: 340.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: wrapWithModel(
                    model: _model.navBarCraftsmanModel,
                    updateCallback: () => setState(() {}),
                    child: NavBarCraftsmanWidget(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
