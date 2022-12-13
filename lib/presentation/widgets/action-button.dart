import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {

  final String text;
  final Function onClick;
  final IconData? leadingIcon;

  const ActionButton({
    super.key,
    required this.text,
    required this.onClick,
    this.leadingIcon
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32,
        child: leadingIcon != null
            ? ElevatedButton.icon(
          onPressed: () => onClick(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            shape: const StadiumBorder(),
          ),
          icon: Icon(leadingIcon, size: 22, color: Colors.white),
          label: _buttonText(),
        )
            : TextButton(
          onPressed: () => onClick(),
          style: TextButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              shape: const StadiumBorder()
          ),
          child: _buttonText(),
        )
    );
  }

  Text _buttonText() {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: 'Source Sans Pro',
      ),
    );
  }
}