import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/animated_background.dart';

class JoinTeamScreen extends StatelessWidget {
  const JoinTeamScreen({super.key});

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
          'Join Our Team',
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
                          Icons.group_add,
                          size: 64,
                          color: Colors.white,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Become Part of IEEE IGDTUW',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Join us in advancing technology for humanity and empowering the next generation of women engineers.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  ..._getRoles().map((role) => _RoleCard(role: role)),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add Google Form link here
                      _launchURL('https://forms.gle/your-recruitment-form');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7042F8),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    icon: const Icon(Icons.assignment, size: 28),
                    label: const Text(
                      'Apply Now',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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

  List<Map<String, String>> _getRoles() {
    return [
      {
        'name': 'Membership and Research Team',
        'description':
            'Promote research culture at IGDTUW by organizing workshops, facilitating access to IEEE resources, and engaging students with research opportunities. Maintain membership records and foster collaborations with professors.',
      },
      {
        'name': 'Content Team',
        'description':
            'We\'re the wordsmiths of IEEE IGDTUW. From quirky captions to impactful write-ups, we make sure every post, article, and update has the perfect words to grab attention. If you love writing, ideating, or just making things sound cooler then yayyy this is your spot!',
      },
      {
        'name': 'HR Team',
        'description':
            'The HR team at IEEE IGDTUW is the backbone of smooth functioning. From booking venues and creating registration forms to managing the team and ensuring efficient communication, they handle it all. They also take care of IT services and coordinate staff permissions required for society activities.',
      },
      {
        'name': 'Media Team',
        'description':
            'We are the storytellers of IEEE IGDTUW, framing every moment and amplifying every event. From dynamic reels that go viral to stunning photos that capture the essence of the moment, we\'re the lens through which the world sees our vibrant community.',
      },
      {
        'name': 'Sponsorship Team',
        'description':
            'We are the bridge between innovation and industry, connecting brilliant student initiatives with leading organizations and brands. From securing collaborations to creating win-win opportunities, our team ensures that every event is powered with the right support and spark.',
      },
      {
        'name': 'PR Team',
        'description':
            'The PR team is the voice of our society, dedicated to build connections and amplify our initiatives. From promoting events and managing communications to building a strong online and offline presence, we ensure that every activity of the society reaches and inspires the student community.',
      },
      {
        'name': 'Technical Team',
        'description':
            'We are the minds behind the screens, managing the official IEEE website and leading tech events like Open Source Week and Hackathons, while staying updated with the latest technologies to drive innovation forward.',
      },
      {
        'name': 'Creative Team',
        'description':
            'We are the creative team. Our role is to design the visual content that goes on social media. We mainly work on posters, posts, and stories for social media, focusing on clean designs and creative visuals that keep things engaging.',
      },
      {
        'name': 'Event Management (EM) Team',
        'description':
            'We are the force behind organizing society events. From planning and coordination to contacting speakers, managing registrations, and ensuring everything runs seamlessly.',
      },
    ];
  }
}

class _RoleCard extends StatelessWidget {
  final Map<String, String> role;

  const _RoleCard({required this.role});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Color(0xFF9563FF),
                size: 24,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  role['name']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9563FF),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            role['description']!,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
