class TeamMember {
  final String name;
  final String position;
  final String imageUrl;
  final String? linkedinUrl;
  final String? instagramUrl;

  TeamMember({
    required this.name,
    required this.position,
    required this.imageUrl,
    this.linkedinUrl,
    this.instagramUrl,
  });
}

List<TeamMember> getTeamMembers() {
  return [
    TeamMember(
      name: 'Anamika Kumari',
      position: 'IEEE Chairperson',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/1.3abdc574.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/anamika-kumari-3a594124b/',
      instagramUrl: 'https://www.instagram.com/anamika._.kumari',
    ),
    TeamMember(
      name: 'Riya Jain',
      position: 'WIE Chairperson',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/2.8a3e0514.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/riya-jain-b41267258',
      instagramUrl: 'https://www.instagram.com/riyajain0905',
    ),
    TeamMember(
      name: 'Khushi Kankheria',
      position: 'IEEE Vice Chairperson',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/3.f725029c.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/khushi-kankheria-0b1751256',
      instagramUrl: 'https://www.instagram.com/khushi_kankheria',
    ),
    TeamMember(
      name: 'Sakshi Bhushan',
      position: 'WIE Vice Chairperson',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/4.61886ad5.png',
      linkedinUrl: 'https://www.linkedin.com/in/bhushansakshi',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Anushree Jain',
      position: 'IEEE General Secretary',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/5.b04c8816.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/anushree-jain-2990a0285',
      instagramUrl: 'https://www.instagram.com/anushree_jain4225',
    ),
    TeamMember(
      name: 'Advika Singhal',
      position: 'WIE General Secretary',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/20.69643185.png',
      linkedinUrl: 'https://www.linkedin.com/in/advika-singhal-ab97a7285',
      instagramUrl: 'https://www.instagram.com/_.adviikaaa_',
    ),
    TeamMember(
      name: 'Harshita',
      position: 'Sponsorship Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/7.ed6fdf7a.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/harshita-a02474289',
      instagramUrl: 'https://www.instagram.com/harshitaa.__.19',
    ),
    TeamMember(
      name: 'Ishita Pahuja',
      position: 'Sponsorship Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/8.b9f4f7bd.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/ishita-pahuja-702776284/',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Gunjan Aggarwal',
      position: 'Treasurer',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/9.716c2266.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/gunjan-aggarwal-b61b91212',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Himani Gupta',
      position: 'Event Management Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/10.01ab7c3c.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/himani-gupta-442b26287',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Khushi Mittal',
      position: 'Event Management Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/11.61f6acde.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/khushi-mittal-155204274/',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Priya Singh',
      position: 'Event Management Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/12.d2f0d37e.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/priya-singh-b1a9a0277',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Kanan Mittal',
      position: 'Public Relation Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/13.4549d376.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/kanan-mittal-0a1b54289',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Divya Sharma',
      position: 'Public Relation Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/14.5709ccb9.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/divya-72018a283',
      instagramUrl: 'https://www.instagram.com/the_divine_16',
    ),
    TeamMember(
      name: 'Sunakshi',
      position: 'Public Relation Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/15.34e72bcb.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/sunakshi-b311b7282',
      instagramUrl: 'https://www.instagram.com/mistyyrao',
    ),
    TeamMember(
      name: 'Sakshi',
      position: 'Creative Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/16.4374222d.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/sakshi-a24899290',
      instagramUrl: 'https://www.instagram.com/sakshii05_/',
    ),
    TeamMember(
      name: 'Diya Tyagi',
      position: 'Creative Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/17.fd539a24.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/diya-tyagi-6251b3274/',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Khushi Choudhary',
      position: 'HR Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/18.62107f79.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/khushi-choudhary-bab28928a',
      instagramUrl: 'https://www.instagram.com/_ch_khushi_23_',
    ),
    TeamMember(
      name: 'Parnika Singh',
      position: 'Content Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/21.fc1f133d.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/parnika-singh-7b559b288/',
      instagramUrl: 'https://www.instagram.com/par.17nika/',
    ),
    TeamMember(
      name: 'Pragati',
      position: 'Technical Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/22.55ed1897.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/pragati-860830284/',
      instagramUrl: 'https://www.instagram.com/pragattii_14/',
    ),
    TeamMember(
      name: 'Sneha Yadav',
      position: 'Technical Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/23.39aaba5a.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/sneha-yadav-11a454283/',
      instagramUrl: 'https://www.instagram.com/sneha_2005_yadav/',
    ),
    TeamMember(
      name: 'Vidhi Saxena',
      position: 'Media Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/24.3b0e2863.jpeg',
      linkedinUrl: 'https://www.linkedin.com/in/vidhi-saxena-86150a243/',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Hiba Ali',
      position: 'Membership & Research Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/26.2e313921.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/hiba-ali-419835290/',
      instagramUrl: 'https://www.instagram.com/',
    ),
    TeamMember(
      name: 'Dhwani Sharma',
      position: 'Membership & Research Head',
      imageUrl: 'https://ieee-igdtuw.github.io/ieeeigdtuw/_next/static/media/27.26a76316.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/dhwanii/',
      instagramUrl: 'https://www.instagram.com/',
    ),
  ];
}
