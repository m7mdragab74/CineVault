import 'package:cine_vault/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldPin extends StatefulWidget {
  final Function(String) onChange;
  final double defaultBoxSize;
  final double selectedBoxSize;
  final BoxDecoration? defaultDecoration;
  final int codeLength;
  final TextStyle? textStyle;
  final double margin;
  final BoxDecoration? selectedDecoration;
  final bool autoFocus;
  final MainAxisAlignment alignment;
  final TextEditingController? textController;

  TextFieldPin({
    required this.onChange,
    required this.defaultBoxSize,
    defaultDecoration,
    selectedBoxSize,
    this.codeLength = 5,
    this.textStyle,
    this.margin = 16.0,
    this.selectedDecoration,
    this.autoFocus = false,
    this.alignment = MainAxisAlignment.center,
    this.textController,
  })  : this.selectedBoxSize = selectedBoxSize ?? defaultBoxSize,
        this.defaultDecoration = defaultDecoration ??
            BoxDecoration(
              border: Border.all(color: AppColors.bgColor, width: 1.w),
              borderRadius: BorderRadius.circular(10.r),
            );

  @override
  _TextFieldPinState createState() => _TextFieldPinState();
}

class _TextFieldPinState extends State<TextFieldPin> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.textController ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.textController == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  List<Widget> getField() {
    final List<Widget> result = <Widget>[];
    for (int i = 1; i <= widget.codeLength; i++) {
      result.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: widget.margin),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            _controller.text.length <= i - 1
                ? Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: widget.defaultBoxSize,
                      width: widget.defaultBoxSize,
                      decoration: widget.defaultDecoration,
                    ),
                  )
                : Container(),
            _controller.text.length >= i
                ? Container(
                    decoration: widget.selectedDecoration,
                    width: widget.selectedBoxSize,
                    height: widget.selectedBoxSize,
                    child: Center(
                      child: Text(
                        _controller.text.length > i - 1
                            ? _controller.text[i - 1]
                            : '',
                        style: widget.textStyle,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: widget.defaultBoxSize >= widget.selectedBoxSize
                ? widget.defaultBoxSize
                : widget.selectedBoxSize,
            child: Row(
              mainAxisAlignment: widget.alignment,
              children: getField(),
            ),
          ),
          defaultTextField(),
        ],
      ),
    );
  }

  Widget defaultTextField() {
    return Opacity(
      opacity: 0.0,
      child: TextField(
        maxLength: widget.codeLength,
        showCursor: false,
        enableSuggestions: false,
        autocorrect: false,
        autofocus: widget.autoFocus,
        enableIMEPersonalizedLearning: false,
        enableInteractiveSelection: false,
        style: const TextStyle(color: AppColors.bgColor),
        decoration: const InputDecoration(
          fillColor: AppColors.bgColor,
          counterStyle: TextStyle(color: AppColors.bgColor),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          filled: true,
        ),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: TextInputType.phone,
        controller: _controller,
        onChanged: (value) {
          setState(() {});
          widget.onChange(value);
        },
      ),
    );
  }
}
