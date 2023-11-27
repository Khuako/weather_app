import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    Key? key,
    required this.child,
    this.maxWidth,
    this.padding,
    this.backgroundColor,
    this.margin,
  }) : super(key: key);
  final Widget child;
  final double? maxWidth;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Material(

      type: MaterialType.transparency,
      child: Center(
        child: Container(
          padding: padding,
          margin: margin,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF3F4A56).withOpacity(0.1),
                blurRadius: 12,
                spreadRadius: 0,
                offset: const Offset(0,0,),
              ),
              BoxShadow(
                color: const Color(0xFF3F4A56).withOpacity(0.1),
                blurRadius: 12,
                spreadRadius: 0,
                offset: const Offset(0,0,),
              ),
            ],
            color: backgroundColor ?? Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}