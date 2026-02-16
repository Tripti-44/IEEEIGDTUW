import 'package:flutter/material.dart';
import '../widgets/animated_background.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

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
          'About Us',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _SectionTitle(title: 'Unveiling Our Student Branch & Chapter'),
                  const SizedBox(height: 24),
                  _BranchCard(
                    title: 'IEEE IGDTUW Student Branch',
                    description:
                        '"We aim to foster innovation and technical excellence among young engineers, promoting socially responsible advancements that contribute to a globally competitive India."',
                    points: const [
                      'IEEE IGDTUW began its inspiring journey as IEEE IGIT, inaugurated on February 6, 2004, with just 33 members.',
                      'Now, the student branch has grown to over 200 active members, offering a vibrant community for aspiring women engineers.',
                      'IEEE IGDTUW provides a wide range of platforms that allow students to host and participate in technical and non-technical events, as well as national and international conferences.',
                      'Our mission is to instill technical expertise, leadership, and confidence in students through a variety of year-round events such as IEEE Week, IEEE Day Celebrations, and Student Interest Groups (SIGs).',
                    ],
                  ),
                  const SizedBox(height: 20),
                  _BranchCard(
                    title: 'WIE IGDTUW',
                    description: '',
                    points: const [
                      'At IEEE WIE IGDTUW, we aim to inspire young girls to pursue technical roles and become confident leaders.',
                      'Throughout the year, we work tirelessly through various initiatives to achieve this goal, empowering the next generation of women engineers.',
                      'A proud recipient of the prestigious Darrel Chong Award (Gold, 2016-17), IEEE WIE IGDTUW is recognized for its \'Sparsh Outreach Program\'.',
                      'Through Sparsh, volunteers regularly visit the Kilkari orphanage to mentor and inspire the girls, sharing experiences that go beyond academics.',
                      'These meaningful connections help build growth, confidence, and inspiration on both sides, and we are committed to continuing such impactful efforts in the future.',
                    ],
                  ),
                  const SizedBox(height: 32),
                  _SectionTitle(title: 'Our Aim & Mission'),
                  const SizedBox(height: 24),
                  _MissionCard(
                    icon: Icons.lightbulb_outline,
                    title: 'Who Are We?',
                    description:
                        'We are IEEE IGDTUW, the dynamic student branch of IEEE at Indira Gandhi Delhi Technical University for Women. As part of IEEE\'s global mission, we\'re dedicated to advancing technology for humanity under the prestigious Region 10 of the Delhi Section.',
                  ),
                  const SizedBox(height: 16),
                  _MissionCard(
                    icon: Icons.laptop_mac,
                    title: 'What Drives Us?',
                    description:
                        'At IEEE WIE IGDTUW, we empower young women to take the lead in technology. Our mission is to inspire the next generation to embrace technical roles with confidence and to leave a lasting, positive impact on society.',
                  ),
                  const SizedBox(height: 16),
                  _MissionCard(
                    icon: Icons.trending_up,
                    title: 'Why We Do It?',
                    description:
                        'We are driven by a commitment to push the boundaries of technology. By hosting engaging workshops, events, and hands-on activities, we ensure that our members stay ahead in the ever-evolving tech landscape, fostering innovation and learning.',
                  ),
                  const SizedBox(height: 16),
                  _MissionCard(
                    icon: Icons.history,
                    title: 'Our Journey',
                    description:
                        'Since our inception as IEEE IGIT on 6th February 2004, we\'ve grown from just 33 members to a thriving community of over 200 active changemakers. Our journey is a testament to the power of knowledge and collaboration.',
                  ),
                  const SizedBox(height: 32),
                  _SectionTitle(title: 'IEEE Membership and Benefits'),
                  const SizedBox(height: 16),
                  _BenefitsCard(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Color(0xFF7042F8), Color(0xFF00C6FF)],
      ).createShader(bounds),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _BranchCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> points;

  const _BranchCard({
    required this.title,
    required this.description,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF9563FF),
            ),
          ),
          if (description.isNotEmpty) ...[
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ],
          const SizedBox(height: 16),
          ...points.map((point) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '• ',
                      style: TextStyle(
                        color: Color(0xFF7042F8),
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        point,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class _MissionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _MissionCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black.withValues(alpha: 0.3),
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
              Icon(
                icon,
                color: const Color(0xFF00C6FF),
                size: 32,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            description,
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

class _BenefitsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            'Membership Advantages',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00C6FF),
            ),
          ),
          const SizedBox(height: 16),
          ...[
            'Access to vast array of IEEE publications and research papers',
            'Participation in national and international conferences',
            'Networking with professionals and industry leaders',
            'Resources for professional development and skill enhancement',
            'Discounts on IEEE products and services',
            'Opportunities to host and participate in technical events',
            'Leadership development through Student Interest Groups (SIGs)',
            'Recognition and awards for outstanding contributions',
          ].map((benefit) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: Color(0xFF00C6FF),
                      size: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        benefit,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
