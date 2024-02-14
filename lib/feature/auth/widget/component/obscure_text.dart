import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ObscureText extends ConsumerStatefulWidget {
  const ObscureText({
    super.key,
    required this.labelText,
    this.controller,
  });
  final String labelText;
  final TextEditingController? controller;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ObscureTextState();
}

bool _isObscure = false;

class _ObscureTextState extends ConsumerState<ObscureText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _isObscure,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isObscure = !_isObscure;
            });
          },
          icon: Icon(
            _isObscure ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        labelText: widget.labelText,
      ),
    );
  }
}
