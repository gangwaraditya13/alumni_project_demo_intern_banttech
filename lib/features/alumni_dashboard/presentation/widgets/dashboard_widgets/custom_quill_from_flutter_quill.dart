import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomQuillFromFlutterQuill extends StatefulWidget {

  QuillController quillController;

  CustomQuillFromFlutterQuill({required this.quillController, super.key});

  @override
  State<CustomQuillFromFlutterQuill> createState() => _CustomQuillFromFlutterQuillState();
}

class _CustomQuillFromFlutterQuillState extends State<CustomQuillFromFlutterQuill> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.r,
      children: [
        Container(
          width: 280.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(12.r), topLeft: Radius.circular(12.r)),
              color: Colors.grey.shade200,
              border: Border(bottom: BorderSide(color: Colors.grey))
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: QuillSimpleToolbar(
              controller: widget.quillController,
              config: QuillSimpleToolbarConfig(
                buttonOptions:QuillSimpleToolbarButtonOptions(
                  base: QuillToolbarBaseButtonOptions(
                    iconSize: 12,
                  ),
                ),

                showBackgroundColorButton: false,
                showClearFormat: false,
                showColorButton: false,
                showHeaderStyle: false,
                showListCheck: false,
                showAlignmentButtons: false,
                showUndo: false,
                showRedo: false,
                showFontSize: false,
                showFontFamily: false,
                showStrikeThrough: false,
                showSubscript: false,
                showSuperscript: false,
                showQuote: false,
                showIndent: false,
                showSearchButton: false,
              ),
            ),
          ),
        ),
        Expanded(
          child: QuillEditor.basic(
            controller: widget.quillController,
            config: QuillEditorConfig(
              placeholder: "Write about...",
              padding: EdgeInsets.zero,
            ),
          ),
        ),
      ],
    );
  }
}
