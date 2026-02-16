# IEEE IGDTUW App - Setup Guide

## 📋 Prerequisites

- Flutter SDK (3.10.7 or higher)
- Android Studio / VS Code
- Android device or emulator
- Google Maps API Key (for Contact Us screen map)

## 🚀 Quick Start

### 1. Dependencies Installation

All dependencies are already added. Just run:

```bash
flutter pub get
```

### 2. Google Maps Setup (Required for Contact Us Screen)

#### Get API Key:
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select existing
3. Enable **Maps SDK for Android**
4. Go to **Credentials** → **Create Credentials** → **API Key**
5. Copy the API key

#### Configure Android:
1. Open `android/app/src/main/AndroidManifest.xml`
2. Replace `YOUR_GOOGLE_MAPS_API_KEY_HERE` with your actual API key:
```xml
<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_ACTUAL_API_KEY_HERE"/>
```

### 3. Run the App

```bash
flutter run
```

## 📦 Installed Packages

- ✅ `google_fonts` - Poppins font
- ✅ `url_launcher` - External links
- ✅ `animated_text_kit` - Text animations
- ✅ `flutter_animate` - Additional animations
- ✅ `google_maps_flutter` - Google Maps
- ✅ `carousel_slider` - Image carousels
- ✅ `cached_network_image` - Image caching
- ✅ `flutter_svg` - SVG support

## 🎨 App Features Checklist

### ✅ Completed Features

- [x] Beautiful IEEE-themed loader with rotating gradient
- [x] Animated homepage with background animation
- [x] 4 social media icon links (LinkedIn, X, Instagram, Email)
- [x] Animated counter for Members, Awards, Events
- [x] Menu drawer with 6 navigation options
- [x] About Us page with detailed sections
- [x] Meet Our Team with 24 members + hover effects
- [x] Events page with 2 tabs (Past Events & Announcements)
- [x] Past events carousel with 5 events
- [x] Event registration screen for WIEmpower Week 7.0
- [x] Join Our Team with 9 role descriptions
- [x] FAQ screen with 5 expandable questions
- [x] Contact Us with Google Maps integration
- [x] All animations on buttons, toggles, and transitions
- [x] IEEE color theme throughout (#7042F8, #00C6FF)

## 🎯 Key Navigation Flow

```
Loader (3s)
    ↓
Home Screen
    ├── Menu Drawer
    │   ├── About Us
    │   ├── Meet Our Team
    │   ├── Events
    │   │   ├── Past Events Tab
    │   │   └── Announcements Tab
    │   │       └── Event Registration
    │   ├── Join Our Team
    │   ├── FAQ
    │   └── Contact Us
    └── Social Media Links (External)
```

## 🎨 Theme Colors

```dart
Primary Purple:    #7042F8
Secondary Purple:  #9563FF
Cyan Blue:         #00C6FF
Dark Background:   #0F0519
Accent Dark:       #1A0B2E
```

## 📱 Testing Checklist

### Screens to Test:
- [ ] Loader animation plays for 3 seconds
- [ ] Home screen counter animates from 0
- [ ] All 4 social media buttons open correct URLs
- [ ] Menu drawer opens from top-right
- [ ] About Us scrolls smoothly
- [ ] Team members show hover effect when tapped
- [ ] Past Events carousel auto-plays
- [ ] Event Registration buttons work
- [ ] Join Team Apply Now button opens (update with real form)
- [ ] FAQ items expand/collapse smoothly
- [ ] Contact Us map loads properly
- [ ] All external links open correctly

### Animations to Verify:
- [ ] Background animation continuously moves
- [ ] Loader rotates smoothly
- [ ] Counters increment smoothly
- [ ] Typewriter effect on homepage
- [ ] Button scale animations work
- [ ] Screen transitions are smooth
- [ ] FAQ expand/collapse animations
- [ ] Team card hover effects

## 🔗 External Links Used

### Social Media:
- LinkedIn: https://www.linkedin.com/company/ieee-igdtuw/
- Instagram: https://www.instagram.com/ieeeigdtuw/
- X: https://x.com/ieeeigdtuw
- Email: mailto:ieeeigdtu@gmail.com

### Event Registration:
- WIEmpower Week 7.0: https://bit.ly/4bI05nA
- WhatsApp Group: https://chat.whatsapp.com/HVGXLq8d64E7fpOOso46DO

### Team Recruitment:
- Google Form: `https://forms.gle/your-recruitment-form` (Update in `join_team_screen.dart`)

## ⚠️ Important Notes

1. **Google Maps API Key**: The map in Contact Us screen requires a valid Google Maps API key. Without it, the map will show a gray area.

2. **Internet Permission**: Already added in AndroidManifest.xml for images and maps.

3. **URL Launcher**: Configured for http, https, and mailto schemes.

4. **Image Caching**: All team member and event images are cached for better performance.

5. **Theme Consistency**: All screens use the IEEE color palette (#7042F8, #00C6FF, #9563FF).

## 🐛 Troubleshooting

### Map not showing:
- Check if Google Maps API key is added correctly
- Verify Maps SDK for Android is enabled in Google Cloud Console
- Ensure internet permission is granted

### Images not loading:
- Check internet connection
- Verify URLs are accessible
- Clear app cache and restart

### Animations laggy:
- Test on physical device (emulators may lag)
- Check if device supports hardware acceleration

## 📝 Customization

### Update Team Members:
Edit `lib/models/team_member.dart` → `getTeamMembers()` function

### Update Events:
Edit `lib/models/event.dart` → `getPastEvents()` function

### Update FAQs:
Edit `lib/screens/faq_screen.dart` → `_getFAQs()` function

### Update Team Roles:
Edit `lib/screens/join_team_screen.dart` → `_getRoles()` function

### Change Colors:
Update color constants in respective screen files or create a `colors.dart` file

## 🎉 Build for Release

### Android APK:
```bash
flutter build apk --release
```

### Android App Bundle (for Play Store):
```bash
flutter build appbundle --release
```

The built files will be in:
- APK: `build/app/outputs/flutter-apk/app-release.apk`
- Bundle: `build/app/outputs/bundle/release/app-release.aab`

## 📧 Support

For issues or questions:
- Email: ieeeigdtu@gmail.com
- Instagram: @ieeeigdtuw

---

**Happy Coding! 🚀**  
*IEEE IGDTUW Mobile App*
