import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final double verticalPadding;
  final String value;
  final Icon suffixIcon;
  final bool showLabel;
  const CustomTextFormField(
      {Key? key,
      required this.hintText,
      required this.verticalPadding,
      required this.value,
      required this.suffixIcon,
      this.showLabel = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          showLabel
              ? Text(
                  hintText.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                    color: Color(0xFF9CA4AA),
                  ),
                )
              : const SizedBox(),
          const SizedBox(
            height: 7.0,
          ),
          TextFormField(
            initialValue: value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              contentPadding: EdgeInsets.symmetric(
                  vertical: verticalPadding, horizontal: 15.0),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 87, 74, 74),
                ),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
