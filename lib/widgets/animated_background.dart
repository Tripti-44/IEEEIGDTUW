import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({super.key});

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    )..repeat();
    _controller3 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 25),
    )..repeat();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              colors: [
                Color(0xFF1A0B2E),
                Color(0xFF0F0519),
                Colors.black,
              ],
            ),
          ),
        ),
        AnimatedBuilder(
          animation: _controller1,
          builder: (context, child) {
            return CustomPaint(
              painter: _BackgroundPainter(
                animation1: _controller1.value,
                animation2: _controller2.value,
                animation3: _controller3.value,
              ),
              child: Container(),
            );
          },
        ),
      ],
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  final double animation1;
  final double animation2;
  final double animation3;

  _BackgroundPainter({
    required this.animation1,
    required this.animation2,
    required this.animation3,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..shader = RadialGradient(
        colors: [
          const Color(0xFF7042F8).withValues(alpha: 0.3),
          Colors.transparent,
        ],
      ).createShader(Rect.fromCircle(
        center: Offset(
          size.width * 0.5 + math.cos(animation1 * 2 * math.pi) * size.width * 0.3,
          size.height * 0.3 + math.sin(animation1 * 2 * math.pi) * size.height * 0.2,
        ),
        radius: size.width * 0.4,
      ));

    final paint2 = Paint()
      ..shader = RadialGradient(
        colors: [
          const Color(0xFF00C6FF).withValues(alpha: 0.2),
          Colors.transparent,
        ],
      ).createShader(Rect.fromCircle(
        center: Offset(
          size.width * 0.7 + math.cos(animation2 * 2 * math.pi) * size.width * 0.2,
          size.height * 0.6 + math.sin(animation2 * 2 * math.pi) * size.height * 0.3,
        ),
        radius: size.width * 0.35,
      ));

    final paint3 = Paint()
      ..shader = RadialGradient(
        colors: [
          const Color(0xFF9563FF).withValues(alpha: 0.15),
          Colors.transparent,
        ],
      ).createShader(Rect.fromCircle(
        center: Offset(
          size.width * 0.3 + math.cos(animation3 * 2 * math.pi) * size.width * 0.25,
          size.height * 0.8 + math.sin(animation3 * 2 * math.pi) * size.height * 0.15,
        ),
        radius: size.width * 0.3,
      ));

    canvas.drawCircle(
      Offset(
        size.width * 0.5 + math.cos(animation1 * 2 * math.pi) * size.width * 0.3,
        size.height * 0.3 + math.sin(animation1 * 2 * math.pi) * size.height * 0.2,
      ),
      size.width * 0.4,
      paint1,
    );

    canvas.drawCircle(
      Offset(
        size.width * 0.7 + math.cos(animation2 * 2 * math.pi) * size.width * 0.2,
        size.height * 0.6 + math.sin(animation2 * 2 * math.pi) * size.height * 0.3,
      ),
      size.width * 0.35,
      paint2,
    );

    canvas.drawCircle(
      Offset(
        size.width * 0.3 + math.cos(animation3 * 2 * math.pi) * size.width * 0.25,
        size.height * 0.8 + math.sin(animation3 * 2 * math.pi) * size.height * 0.15,
      ),
      size.width * 0.3,
      paint3,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
