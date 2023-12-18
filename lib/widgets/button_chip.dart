import 'package:avicenna/avicenna.dart';
import 'package:flutter/material.dart';

enum BoronganChipSize {
  shrink, small, medium, large
}
/// Actually there's already material chip
class BoronganChip extends StatelessWidget {
  const BoronganChip({
    Key? key,
    this.text,
    this.onPressed,
    this.textColor,
    this.color,
    this.size,
    this.borderRadius = 14,
    this.child,
    this.borderColor
  }) : super(key: key);

  final String? text;
  final void Function()? onPressed;
  final Color? textColor;
  final Color? color;
  final BoronganChipSize? size;
  final double borderRadius;
  final Widget? child;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    double multiplier = size == BoronganChipSize.large ? 1.5 : size == BoronganChipSize.medium ? 1.2 : 1;
    double height = size == BoronganChipSize.shrink ? 22 : 28;
    double padding = size == BoronganChipSize.shrink ? 8 : 12;
    return AvicennaPress(
      child: Container(
        decoration:BoxDecoration(
          border: Border.all(
            color: borderColor ?? Colors.blue,
          ),
          borderRadius: BorderRadius.circular(4)
        ),
        margin: const EdgeInsets.fromLTRB(8, 0, 0, 24),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: padding * multiplier, right: padding * multiplier)
            ),
            minimumSize: MaterialStateProperty.all(
              Size(28 * multiplier, height * multiplier)
            ),
            backgroundColor: MaterialStateProperty.all(color ?? Colors.white),
            shadowColor: MaterialStateProperty.all(const Color(0x301A77AD)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius * multiplier),
                // side: BorderSide(color: Colors.labelOutline)
              )
            )
          ),
          onPressed: onPressed,
          child: child ?? Text(text!, style: TextStyle(
            color: textColor ?? Colors.blue,
            fontSize: 12 * multiplier,
            // fontStyle: FontStyle.italic
          )),
        ),
      ),
    );
  }

}

class NewBoronganChip extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color textColor;
  final void Function()? onTap;
  final EdgeInsetsGeometry? margin;
  
  const NewBoronganChip({
    required this.text,
    required this.borderColor,
    required this.textColor,
    required this.onTap,
    this.margin,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return AvicennaPress(
      onTap: onTap,
      child: Container(
        decoration:BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(4)
        ),
        padding: const EdgeInsets.all(6),
        margin: margin,
        child: Text(
          text, 
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: textColor
          ),
        ),
      )
    );
  }
}