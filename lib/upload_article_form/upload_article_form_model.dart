import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadArticleFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nazivArtiklaUpload widget.
  TextEditingController? nazivArtiklaUploadController;
  String? Function(BuildContext, String?)?
      nazivArtiklaUploadControllerValidator;
  // State field(s) for opisArtiklaUpload widget.
  TextEditingController? opisArtiklaUploadController;
  String? Function(BuildContext, String?)? opisArtiklaUploadControllerValidator;
  // State field(s) for cijenaArtiklaUpload widget.
  TextEditingController? cijenaArtiklaUploadController;
  String? Function(BuildContext, String?)?
      cijenaArtiklaUploadControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nazivArtiklaUploadController?.dispose();
    opisArtiklaUploadController?.dispose();
    cijenaArtiklaUploadController?.dispose();
  }

  /// Additional helper methods are added here.

}
