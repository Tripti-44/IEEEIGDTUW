import 'package:flutter/material.dart';
import '../screens/about_us_screen.dart';
import '../screens/team_screen.dart';
import '../screens/events_screen.dart';
import '../screens/join_team_screen.dart';
import '../screens/faq_screen.dart';
import '../screens/contact_us_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0F0519),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF1A0B2E).withValues(alpha: 0.9),
              Colors.black.withValues(alpha: 0.95),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Color(0xFF7042F8), Color(0xFF00C6FF)],
                ).createShader(bounds),
                child: const Text(
                  'IEEE IGDTUW',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Divider(
                color: Color(0xFF7042F8),
                thickness: 1,
                indent: 20,
                endIndent: 20,
                height: 40,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _MenuTile(
                      icon: Icons.info_outline,
                      title: 'About Us',
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutUsScreen()),
                        );
                      },
                    ),
                    _MenuTile(
                      icon: Icons.people_outline,
                      title: 'Meet Our Team',
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TeamScreen()),
                        );
                      },
                    ),
                    _MenuTile(
                      icon: Icons.event,
                      title: 'Events',
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EventsScreen()),
                        );
                      },
                    ),
                    _MenuTile(
                      icon: Icons.group_add,
                      title: 'Join Our Team',
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JoinTeamScreen()),
                        );
                      },
                    ),
                    _MenuTile(
                      icon: Icons.help_outline,
                      title: 'FAQ',
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FAQScreen()),
                        );
                      },
                    ),
                    _MenuTile(
                      icon: Icons.contact_mail_outlined,
                      title: 'Contact Us',
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContactUsScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuTile extends StatefulWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _MenuTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  State<_MenuTile> createState() => _MenuTileState();
}

class _MenuTileState extends State<_MenuTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
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
    return ScaleTransition(
      scale: _scaleAnimation,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              const Color(0xFF7042F8).withValues(alpha: 0.1),
              const Color(0xFF00C6FF).withValues(alpha: 0.05),
            ],
          ),
          border: Border.all(
            color: const Color(0xFF7042F8).withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: ListTile(
          leading: Icon(
            widget.icon,
            color: const Color(0xFF7042F8),
          ),
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF7042F8),
            size: 16,
          ),
          onTap: () {
            _controller.forward().then((_) {
              _controller.reverse();
              widget.onTap();
            });
          },
        ),
      ),
    );
  }
}
