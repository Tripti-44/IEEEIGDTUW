import 'package:flutter/material.dart';
import '../widgets/animated_background.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

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
          'Frequently Asked Questions',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          const AnimatedBackground(),
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                const SizedBox(height: 10),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Color(0xFF7042F8), Color(0xFF00C6FF)],
                  ).createShader(bounds),
                  child: const Text(
                    'FAQs',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ..._getFAQs().map((faq) => _FAQItem(faq: faq)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, String>> _getFAQs() {
    return [
      {
        'question': 'What benefits do I get as a student member of IEEE?',
        'answer':
            'Joining IEEE provides numerous benefits, such as access to a vast array of IEEE publications, participation in conferences, networking with professionals in the field, resources for professional development, and discounts on various IEEE products and services.',
      },
      {
        'question': 'How can I stay updated on upcoming IEEE events?',
        'answer':
            'Follow us on Instagram, LinkedIn, and Twitter for the latest updates.',
      },
      {
        'question': 'Are IEEE events free for members?',
        'answer':
            'Yes, most events organized by IEEE are free or discounted for members. These events offer great learning and networking opportunities.',
      },
      {
        'question': 'What types of conferences and events does IEEE host?',
        'answer':
            'IEEE hosts a wide range of conferences and events globally, covering many technology sectors. You can view upcoming events by visiting the IEEE events calendar.',
      },
      {
        'question': 'How can I obtain IEEE research papers and publications?',
        'answer':
            'IEEE members can access research papers and publications through the IEEE Xplore digital library. Non-members have the option to purchase individual papers or subscribe to access the library.',
      },
    ];
  }
}

class _FAQItem extends StatefulWidget {
  final Map<String, String> faq;

  const _FAQItem({required this.faq});

  @override
  State<_FAQItem> createState() => _FAQItemState();
}

class _FAQItemState extends State<_FAQItem>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _controller;
  late Animation<double> _iconTurns;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _iconTurns = Tween<double>(begin: 0.0, end: 0.5).animate(
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
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                  if (_isExpanded) {
                    _controller.forward();
                  } else {
                    _controller.reverse();
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.faq['question']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    RotationTransition(
                      turns: _iconTurns,
                      child: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xFF7042F8),
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: _isExpanded ? null : 0,
              child: _isExpanded
                  ? Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.2),
                      ),
                      child: Text(
                        widget.faq['answer']!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                          height: 1.5,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
