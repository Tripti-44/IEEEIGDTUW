class Event {
  final String title;
  final String date;
  final String description;
  final List<String> imageUrls;

  Event({
    required this.title,
    required this.date,
    required this.description,
    required this.imageUrls,
  });
}

List<Event> getPastEvents() {
  return [
    Event(
      title: 'Aisha Bowe: From NASA to CEO - Inspiring Women in Tech',
      date: '2024-09-11',
      description:
          'On September 11th, 2024, IEEE IGDTUW had the honor of hosting Aisha Bowe, a former NASA rocket scientist, entrepreneur, and CEO of STEMBoard. As the first Black woman to break barriers in space tech, Aisha shared her journey, inspiring women to pursue careers in technology. Her story of determination and leadership left the audience empowered to reach for the stars.',
      imageUrls: [
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/random_1.f4ec92ab.jpg',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event1_img3.79c1947f.jpg',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event1_img2.2a34bd84.jpg',
      ],
    ),
    Event(
      title: 'Quadcopter: The Drone Workshop',
      date: '2024-02-08',
      description:
          'On February 8th-9th, 2024, IEEE IGDTUW successfully conducted the \'Quadcopter: The Drone Workshop,\' where participants delved into the exciting world of drone technology. Attendees assembled and piloted drones, gaining hands-on experience and insights into aerial innovation, making it a memorable event for all tech enthusiasts.',
      imageUrls: [
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/random_2.6bbf7102.jpg',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event2_img2.092c2447.jpg',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event2_img3.c3a9b30e.jpg',
      ],
    ),
    Event(
      title: 'Harkirat Singh: Navigating the World of Open Source',
      date: '2024-10-01',
      description:
          'On October 1st, 2024, IEEE IGDTUW welcomed Harkirat Singh, an open-source enthusiast and IIT Roorkee graduate, to share his experiences. A software engineer who has worked at FAANG, finance, and startup companies, Harkirat captivated the audience with his unique journey in the world of coding. His session provided valuable insights into open-source projects and career growth.',
      imageUrls: [
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/random_3.913133de.jpg',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event3_img2.61d450f1.jpg',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event3_img3.fe2446c6.jpg',
      ],
    ),
    Event(
      title: 'Nishant Chahar: Crafting a Successful Career Path',
      date: '2024-02-12',
      description:
          'On February 12th, 2024, IEEE IGDTUW hosted an enlightening session with Nishant Chahar, a Microsoft software engineer and founder of AlgoPrep. With a proven track record of mentoring over 300K students, Nishant shared invaluable career-building strategies and insights from his journey, inspiring attendees to pursue their paths with confidence and determination.',
      imageUrls: [
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/random_4.c7c35e9a.png',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event4_img2.d36c647b.jpg',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event4_img3.59c65d21.jpg',
      ],
    ),
    Event(
      title: 'WIEmpower 5.0: Women in Tech Leadership',
      date: '2024-02-05 to 2024-02-12',
      description:
          'WIEmpower 5.0, held from February 5th to 12th, 2024, was a transformative event bringing together women leaders in technology. The event featured interactive sessions, live demos, and opportunities for women professionals and students to connect and collaborate, empowering the next generation of innovators.',
      imageUrls: [
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/random_5.1ee1d5d9.jpg',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event5_img2.1faab444.jpg',
        'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/event5_img3.33b49072.jpg',
      ],
    ),
  ];
}
