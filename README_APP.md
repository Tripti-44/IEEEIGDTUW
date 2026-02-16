# IEEE IGDTUW Flutter App

A beautiful, feature-rich Flutter application for the IEEE IGDTUW Student Branch with stunning animations and IEEE-themed design.

## ✨ Features Implemented

### 🎨 Design & Theme
- **IEEE Color Scheme**: Purple gradient (#7042f8 to #00c6ff) throughout the app
- **Animated Background**: Continuously moving gradient orbs on all screens
- **Material 3 Design**: Modern UI with smooth animations
- **Custom Loader**: Beautiful rotating gradient circle with IEEE IGDTUW branding

### 📱 Screens

#### 1. **Loader Screen** ⏳
- Animated rotating gradient circle
- IEEE IGDTUW branding with gradient text
- Auto-navigates to home after 3 seconds with fade transition

#### 2. **Home Screen** 🏠
- Typewriter animated title "IEEE IGDTUW"
- Gradient subtitle with full organization name
- **4 Social Media Links** with animated buttons:
  - LinkedIn (Blue)
  - X/Twitter (Light Blue)
  - Instagram (Pink)
  - Email (Red)
- **Animated Counter Stats**:
  - Members: 230+
  - Awards: 30+
  - Events: 50+
- Menu drawer accessible from top-right

#### 3. **Menu Drawer** 📋
- Gradient-themed drawer with IEEE branding
- Animated menu items with scale effects
- Navigation to:
  - About Us
  - Meet Our Team
  - Events (with sub-tabs)
  - Join Our Team
  - FAQ
  - Contact Us

#### 4. **About Us Screen** ℹ️
- **Unveiling Our Student Branch & Chapter** section
- IEEE IGDTUW Student Branch details with bullet points
- WIE IGDTUW information
- **Our Aim & Mission** with 4 cards:
  - Who Are We?
  - What Drives Us?
  - Why We Do It?
  - Our Journey
- **IEEE Membership and Benefits** section with checkmark list

#### 5. **Meet Our Team** 👥
- Grid view of all 24 team members
- Cached network images for better performance
- Hover effect reveals social media icons
- **Team Members Include**:
  - Chairpersons (IEEE & WIE)
  - Vice Chairpersons
  - General Secretaries
  - Heads of all departments (HR, Technical, Creative, PR, Content, Media, Sponsorship, Event Management, Membership & Research)
- LinkedIn and Instagram links for each member

#### 6. **Events Screen** 🎉
- **Two Tabs**:
  
  **Past Events Tab**:
  - 5 major past events displayed
  - Image carousel for each event (3 images per event)
  - Event details: title, date, description
  - Events included:
    - Aisha Bowe: From NASA to CEO
    - Quadcopter: The Drone Workshop
    - Harkirat Singh: Open Source
    - Nishant Chahar: Career Path
    - WIEmpower 5.0
  
  **Event Announcements Tab**:
  - Featured event: WIEmpower Week 7.0 with WIEgnite Hackathon 3.0
  - Prize details: ₹2 Lakhs+
  - Register Now button (links to registration screen)
  - Join WhatsApp Group button
  - Feedback section for past events

#### 7. **Event Registration Screen** 📝
- WIEmpower Week 7.0 details
- Event highlights with icons
- Registration link button (https://bit.ly/4bI05nA)
- WhatsApp group join button
- Official brochure information notice

#### 8. **Join Our Team** 🤝
- Gradient header with call-to-action
- **9 Team Roles** with descriptions:
  1. Membership and Research Team
  2. Content Team
  3. HR Team
  4. Media Team
  5. Sponsorship Team
  6. PR Team
  7. Technical Team
  8. Creative Team
  9. Event Management Team
- Apply Now button linking to Google Form

#### 9. **FAQ Screen** ❓
- **5 FAQs** with expandable answers:
  1. What benefits do I get as a student member of IEEE?
  2. How can I stay updated on upcoming IEEE events?
  3. Are IEEE events free for members?
  4. What types of conferences and events does IEEE host?
  5. How can I obtain IEEE research papers and publications?
- Animated expand/collapse with rotating arrow icon

#### 10. **Contact Us Screen** 📍
- **Google Maps Integration** showing college location
- College address with location icon
- Email link (clickable)
- **Social Media Links** with custom styled buttons:
  - LinkedIn
  - Instagram
  - X (Twitter)
- Footer with copyright and development credits

## 🎯 Animations & Effects

1. **Loader Animation**: Rotating gradient circle
2. **Background Animation**: Continuously moving gradient orbs (3 orbs with different speeds)
3. **Counter Animation**: Numbers incrementing from 0 to target values
4. **Typewriter Effect**: Animated text on homepage
5. **Scale Animations**: All buttons and menu items
6. **Fade Transitions**: Screen navigation
7. **Carousel**: Auto-playing image sliders in events
8. **Expand/Collapse**: Animated FAQ items
9. **Hover Effects**: Team member cards with social media reveal
10. **Gradient Shaders**: Animated text gradients throughout

## 📦 Packages Used

- `google_fonts` - Poppins font family
- `url_launcher` - Opening external links
- `animated_text_kit` - Typewriter animations
- `flutter_animate` - Additional animations
- `google_maps_flutter` - Map integration
- `carousel_slider` - Image carousels
- `cached_network_image` - Efficient image loading

## 🎨 Color Palette

- Primary Purple: `#7042F8`
- Secondary Purple: `#9563FF`
- Cyan Blue: `#00C6FF`
- Dark Background: `#0F0519`
- Accent Dark: `#1A0B2E`

## 🏗️ Project Structure

```
lib/
├── main.dart                          # App entry point
├── models/
│   ├── team_member.dart              # Team member data model
│   └── event.dart                    # Event data model
├── screens/
│   ├── loader_screen.dart            # Animated loader
│   ├── home_screen.dart              # Homepage with stats
│   ├── about_us_screen.dart          # About section
│   ├── team_screen.dart              # Team members grid
│   ├── events_screen.dart            # Past events & announcements
│   ├── event_registration_screen.dart # Event registration details
│   ├── join_team_screen.dart         # Recruitment information
│   ├── faq_screen.dart               # FAQs with expand/collapse
│   └── contact_us_screen.dart        # Contact info with map
└── widgets/
    ├── animated_background.dart      # Animated gradient background
    └── menu_drawer.dart              # Navigation drawer

```

## 🚀 Features Highlight

✅ Beautiful IEEE-themed loader  
✅ Animated homepage with counters  
✅ 4 social media links with custom icons  
✅ Complete menu navigation  
✅ About Us with detailed sections  
✅ Team showcase with 24 members  
✅ Past events gallery with carousels  
✅ Event announcements with registration  
✅ Team recruitment section with 9 roles  
✅ FAQ with 5 questions  
✅ Contact page with Google Maps  
✅ Animations on all buttons and transitions  
✅ Gradient effects throughout  
✅ Cached images for performance  
✅ External link integration  

## 📱 Screenshots Features

- Smooth scrolling on all screens
- Responsive grid layouts
- Cached images for fast loading
- Animated transitions between screens
- Custom styled containers with gradients
- Icon-based navigation
- Professional color scheme matching website

## 🎓 College Information

**Indira Gandhi Delhi Technical University for Women**  
New Church Rd, Opp. St James Church  
Kashmere Gate, Delhi 110006  

**Contact**: ieeeigdtu@gmail.com

## 🔗 Official Links

- LinkedIn: https://www.linkedin.com/company/ieee-igdtuw/
- Instagram: https://www.instagram.com/ieeeigdtuw/
- X (Twitter): https://x.com/ieeeigdtuw
- Website: https://ieee-igdtuw.github.io/ieeeigdtuw/

## 🎉 Notes

- All animations are smooth and optimized
- Background animation runs continuously without performance impact
- Images are cached for better performance
- External links open in browser/native apps
- Google Maps integration for easy navigation
- Theme colors match the official IEEE IGDTUW website
- All content sourced from official website

---

**Developed with ❤️ using Flutter**  
*IEEE IGDTUW Mobile Application*
