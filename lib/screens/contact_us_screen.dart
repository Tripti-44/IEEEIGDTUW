import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/animated_background.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  static const LatLng _collegeLocation = LatLng(28.6676, 77.2299);

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
          'Contact Us',
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
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [Color(0xFF7042F8), Color(0xFF00C6FF)],
                    ).createShader(bounds),
                    child: const Text(
                      'Get In Touch',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Map Container
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(0xFF7042F8).withValues(alpha: 0.3),
                        width: 2,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: GoogleMap(
                        initialCameraPosition: const CameraPosition(
                          target: _collegeLocation,
                          zoom: 15,
                        ),
                        markers: {
                          Marker(
                            markerId: const MarkerId('college'),
                            position: _collegeLocation,
                            infoWindow: const InfoWindow(
                              title: 'IEEE IGDTUW',
                              snippet: 'Kashmere Gate, Delhi',
                            ),
                          ),
                        },
                        zoomControlsEnabled: false,
                        myLocationButtonEnabled: false,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Address Container
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xFF7042F8),
                              size: 28,
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                'Address',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9563FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Indira Gandhi Delhi Technical University for Women\nNew Church Rd, Opp. St James Church\nKashmere Gate, Delhi 110006',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Divider(
                            color: Color(0xFF7042F8), thickness: 0.5),
                        const SizedBox(height: 16),
                        const Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Color(0xFF00C6FF),
                              size: 24,
                            ),
                            SizedBox(width: 12),
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF00C6FF),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        InkWell(
                          onTap: () =>
                              _launchURL('mailto:ieeeigdtu@gmail.com'),
                          child: const Text(
                            'ieeeigdtu@gmail.com',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Social Media Links
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF00C6FF).withValues(alpha: 0.1),
                          const Color(0xFF7042F8).withValues(alpha: 0.05),
                        ],
                      ),
                      border: Border.all(
                        color: const Color(0xFF00C6FF).withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Follow Us On',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00C6FF),
                          ),
                        ),
                        const SizedBox(height: 16),
                        _SocialMediaLink(
                          icon: Icons.work,
                          label: 'LinkedIn',
                          url: 'https://www.linkedin.com/company/ieee-igdtuw/',
                          color: const Color(0xFF0077B5),
                        ),
                        const SizedBox(height: 12),
                        _SocialMediaLink(
                          icon: Icons.camera_alt,
                          label: 'Instagram',
                          url: 'https://www.instagram.com/ieeeigdtuw/',
                          color: const Color(0xFFE1306C),
                        ),
                        const SizedBox(height: 12),
                        _SocialMediaLink(
                          icon: Icons.close,
                          label: 'X (Twitter)',
                          url: 'https://x.com/ieeeigdtuw',
                          color: const Color(0xFF1DA1F2),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Footer
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black.withValues(alpha: 0.3),
                    ),
                    child: const Column(
                      children: [
                        Text(
                          'Developed by IEEE IGDTUW Web Admin team',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 4),
                        Text(
                          '© IEEE IGDTUW 2024 | All rights reserved.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white54,
                          ),
                          textAlign: TextAlign.center,
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

class _SocialMediaLink extends StatelessWidget {
  final IconData icon;
  final String label;
  final String url;
  final Color color;

  const _SocialMediaLink({
    required this.icon,
    required this.label,
    required this.url,
    required this.color,
  });

  Future<void> _launchURL() async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchURL,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color.withValues(alpha: 0.1),
          border: Border.all(
            color: color.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
              size: 28,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: color,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
