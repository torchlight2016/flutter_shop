import 'package:flutter/material.dart';

class KeywordTextField extends StatefulWidget {
  final TextEditingController inputController;

  const KeywordTextField({
    super.key,
    required this.inputController,
  });

  @override
  State<KeywordTextField> createState() => _KeywordTextFieldState();
}

class _KeywordTextFieldState extends State<KeywordTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.inputController,
      onChanged: (text) {
        setState(() {});
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8),
        hintText: '검색어 입력',
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        suffixIcon: widget.inputController.text.isNotEmpty
            ? IconButton(
                onPressed: () => setState(() {
                  widget.inputController.clear();
                }),
                icon: const Icon(Icons.clear),
              )
            : null,
      ),
    );
  }
}
