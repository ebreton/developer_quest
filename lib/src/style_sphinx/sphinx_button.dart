import 'package:flutter_web/material.dart';

class SphinxButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const SphinxButton({
    @required this.onPressed,
    @required this.child,
    Key key,
  }) : super(key: key);

  Color get _pyramidColor => const Color.fromRGBO(242, 124, 78, 1);

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(10);
    return Material(
      color: _pyramidColor,
      shape: RoundedRectangleBorder(borderRadius: radius),
      child: InkWell(
        borderRadius: radius,
        splashColor: _pyramidColor,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
          child: DefaultTextStyle(
            child: child,
            style: _buttonTextStyle,
          ),
        ),
        onTap: onPressed,
      ),
    );
  }

  TextStyle get _buttonTextStyle => const TextStyle(
      fontFamily: 'MontserratRegular',
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(85, 34, 34, 1));
}