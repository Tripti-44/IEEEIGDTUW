import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../widgets/menu_drawer.dart';
import '../widgets/animated_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int members = 0;
  int awards = 0;
  int events = 0;
  final int targetMembers = 230;
  final int targetAwards = 30;
  final int targetEvents = 50;

  @override
  void initState() {
    super.initState();
    _startCounting();
  }

  void _startCounting() {
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        _animateCounter();
      }
    });
  }

  void _animateCounter() {
    const duration = Duration(milliseconds: 50);
    for (int i = 0; i <= targetMembers; i++) {
      Future.delayed(duration * i, () {
        if (mounted && members < targetMembers) {
          setState(() {
            members++;
          });
        }
      });
    }
    for (int i = 0; i <= targetAwards; i++) {
      Future.delayed(duration * i, () {
        if (mounted && awards < targetAwards) {
          setState(() {
            awards++;
          });
        }
      });
    }
    for (int i = 0; i <= targetEvents; i++) {
      Future.delayed(duration * i, () {
        if (mounted && events < targetEvents) {
          setState(() {
            events++;
          });
        }
      });
    }
  }

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MenuDrawer(),
      body: Stack(
        children: [
          const AnimatedBackground(),
          SafeArea(
            child: Column(
              children: [
                // App Bar with Menu
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Title
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Column(
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      'IEEE IGDTUW',
                                      textStyle: const TextStyle(
                                        fontSize: 42,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      speed: const Duration(milliseconds: 150),
                                    ),
                                  ],
                                  isRepeatingAnimation: false,
                                ),
                                const SizedBox(height: 16),
                                ShaderMask(
                                  shaderCallback: (bounds) =>
                                      const LinearGradient(
                                    colors: [
                                      Color(0xFF7042F8),
                                      Color(0xFF00C6FF)
                                    ],
                                  ).createShader(bounds),
                                  child: const Text(
                                    'Institute of Electrical and Electronics Engineers',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'IGDTUW Student Branch',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          // Social Media Links
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _SocialMediaButton(
                                  icon: Icons.public,
                                  color: const Color(0xFF0077B5),
                                  onTap: () => _launchURL(
                                      'https://www.linkedin.com/company/ieee-igdtuw/'),
                                  label: 'LinkedIn',
                                ),
                                const SizedBox(width: 20),
                                _SocialMediaButton(
                                  icon: Icons.close,
                                  color: const Color(0xFF1DA1F2),
                                  onTap: () => _launchURL(
                                      'https://x.com/ieeeigdtuw?t=a_Ruso2b8InVZgRsWA_JIQ&s=09'),
                                  label: 'X',
                                ),
                                const SizedBox(width: 20),
                                _SocialMediaButton(
                                  icon: Icons.camera_alt,
                                  color: const Color(0xFFE1306C),
                                  onTap: () => _launchURL(
                                      'https://www.instagram.com/ieeeigdtuw/?igshid=MzRlODBiNWFlZA%3D%3D'),
                                  label: 'Instagram',
                                ),
                                const SizedBox(width: 20),
                                _SocialMediaButton(
                                  icon: Icons.email,
                                  color: const Color(0xFFD44638),
                                  onTap: () =>
                                      _launchURL('mailto:ieeeigdtu@gmail.com'),
                                  label: 'Email',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 60),
                          // Stats Counter
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _StatCard(
                                  title: 'Members',
                                  count: '$members+',
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF7042F8),
                                      Color(0xFF9563FF)
                                    ],
                                  ),
                                ),
                                _StatCard(
                                  title: 'Awards',
                                  count: '$awards+',
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF00C6FF),
                                      Color(0xFF0072FF)
                                    ],
                                  ),
                                ),
                                _StatCard(
                                  title: 'Events',
                                  count: '$events+',
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF9563FF),
                                      Color(0xFFE100FF)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialMediaButton extends StatefulWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final String label;

  const _SocialMediaButton({
    required this.icon,
    required this.color,
    required this.onTap,
    required this.label,
  });

  @override
  State<_SocialMediaButton> createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<_SocialMediaButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: widget.color.withValues(alpha: 0.2),
            shape: BoxShape.circle,
            border: Border.all(color: widget.color, width: 2),
            boxShadow: [
              BoxShadow(
                color: widget.color.withValues(alpha: 0.3),
                blurRadius: 12,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Icon(
            widget.icon,
            color: widget.color,
            size: 28,
          ),
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String count;
  final Gradient gradient;

  const _StatCard({
    required this.title,
    required this.count,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: gradient.colors.first.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            count,
            style: const TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
