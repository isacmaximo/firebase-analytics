import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final TextEditingController controller;
  final IconData icon;
  final String hintText;
  const CustomInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool enableDelete = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.only(
        top: size.height * 0.02,
      ),
      child: TextFormField(
        controller: widget.controller,
        onChanged: (value) {
          if (widget.controller.text.isNotEmpty) {
            setState(() {
              enableDelete = true;
            });
          } else {
            setState(() {
              enableDelete = false;
            });
          }
        },
        style: const TextStyle(fontFamily: 'Comfortaa', fontSize: 16),
        decoration: InputDecoration(
          isDense: true,
          hintText: widget.hintText,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          prefixIcon: Icon(widget.icon),
          suffixIcon: enableDelete
              ? GestureDetector(
                  onTap: () {
                    widget.controller.clear();
                    setState(() {
                      enableDelete = false;
                    });
                  },
                  child: const Icon(Icons.close),
                )
              : null,
        ),
      ),
    );
  }
}
