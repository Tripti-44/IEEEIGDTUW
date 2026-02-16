import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/animated_background.dart';

class EventRegistrationScreen extends StatelessWidget {
  const EventRegistrationScreen({super.key});

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Event Registration',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          const AnimatedBackground(),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF7042F8),
                          Color(0xFF9563FF),
                        ],
                      ),
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.celebration,
                          size: 64,
                          color: Colors.white,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'WIEmpower Week 7.0',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'WIEgnite Hackathon 3.0',
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white70,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(0xFF7042F8).withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Event Details',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF9563FF),
                          ),
                        ),
                        const SizedBox(height: 16),
                        _DetailRow(
                          icon: Icons.emoji_events,
                          text: 'Prizes worth ₹2 Lakhs+',
                        ),
                        _DetailRow(
                          icon: Icons.people,
                          text: 'Collaborate and innovate',
                        ),
                        _DetailRow(
                          icon: Icons.workspace_premium,
                          text: 'Exciting goodies and certificates',
                        ),
                        _DetailRow(
                          icon: Icons.code,
                          text: 'Build impactful tech solutions',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () =>
                        _launchURL('https://bit.ly/4bI05nA'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7042F8),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    icon: const Icon(Icons.app_registration, size: 28),
                    label: const Text(
                      'Register Now',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  OutlinedButton.icon(
                    onPressed: () => _launchURL(
                        'https://chat.whatsapp.com/HVGXLq8d64E7fpOOso46DO'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF00C6FF),
                      side: const BorderSide(
                          color: Color(0xFF00C6FF), width: 2),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    icon: const Icon(Icons.chat, size: 28),
                    label: const Text(
                      'Join WhatsApp Group',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue.withValues(alpha: 0.1),
                      border: Border.all(
                        color: Colors.blue.withValues(alpha: 0.3),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.info_outline,
                            color: Colors.blue, size: 24),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'For complete details regarding tracks, guidelines, eligibility, and timelines, please refer to the official brochure.',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _DetailRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF00C6FF),
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
