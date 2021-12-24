import 'package:flutter/material.dart';

class TextKey extends StatelessWidget {
  const TextKey({
    Key? key,
    @required this.text,
    this.icon,
    this.onTextInput,
    this.flex = 1,
  }) : super(key: key);
  final Widget? icon;
  final String? text;
  final ValueSetter<String>? onTextInput;
  final int? flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              onTextInput?.call(text ?? '');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(child: icon?? Text(text ?? '')),
            ),
          ),
        ),
      ),
    );
  }
}
