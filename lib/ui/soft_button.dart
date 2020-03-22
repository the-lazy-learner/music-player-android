import 'package:flutter/material.dart';

class SoftButton extends StatefulWidget {
  final double bevel;
  final Widget child;
  final Color color;
  final VoidCallback onTap;
  final double borderRadius;

  const SoftButton({
    Key key,
    this.bevel = 10,
    this.child,
    this.color,
    this.onTap,
    this.borderRadius = 0.5,
  }) : super(key: key);

  @override
  _SoftButtonState createState() => _SoftButtonState();
}

class _SoftButtonState extends State<SoftButton> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final blurOffset = Offset(widget.bevel / 2, widget.bevel / 2);
    final color = widget.color ?? Theme.of(context).backgroundColor;

    return GestureDetector(
      onTap: this.widget.onTap,
      child: Listener(
        onPointerDown: _onPointerDown,
        onPointerUp: _onPointerUp,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color.lerp(color, Colors.white, 0.6),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _isPressed ? color : Color.lerp(color, Colors.black, 0.1),
                  _isPressed ? Color.lerp(color, Colors.black, 0.05) : color,
                  _isPressed ? Color.lerp(color, Colors.black, 0.05) : color,
                  Color.lerp(color, Colors.white, _isPressed ? 0.2 : 0.4),
                ],
                stops: [0.0, 0.3, 0.6, 1.0],
              ),
              boxShadow: _isPressed
                  ? null
                  : [
                      BoxShadow(
                        blurRadius: widget.bevel,
                        offset: -blurOffset,
                        color: Color.lerp(color, Colors.white, 0.6),
                      ),
                      BoxShadow(
                        blurRadius: widget.bevel,
                        offset: blurOffset,
                        color: Color.lerp(color, Colors.black, 0.3),
                      ),
                    ],
            ),
            child: this.widget.child,
          ),
        ),
      ),
    );
  }
}
