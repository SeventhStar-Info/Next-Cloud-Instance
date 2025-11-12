# Seventh Star iOS App - App Store Readiness Report

Generated: 2025-11-11

## ✅ Configuration Status

### Bundle Identifiers (All Correct)
- **Main App**: `za.co.seventhstar.ios`
- **File Provider Extension**: `za.co.seventhstar.ios.File-Provider-Extension`
- **File Provider UI**: `za.co.seventhstar.ios.File-Provider-Extension-UI`
- **Share Extension**: `za.co.seventhstar.ios.Share`
- **Notification Service**: `za.co.seventhstar.ios.Notification-Service-Extension`
- **Widget**: `za.co.seventhstar.ios.Widget`
- **Widget Intent Handler**: `za.co.seventhstar.ios.WidgetDashboardIntentHandler`

### App Information
- **Display Name**: Seventh Star
- **Version**: 1.0
- **Build Number**: 1
- **URL Scheme**: seventhstar://
- **Minimum iOS**: 12.3

### Branding Status
✅ **All Nextcloud branding removed from user-visible elements:**
- Launch screen: White Seventh Star logo (175x175, 350x350, 525x525)
- Navigation bar: Red Seventh Star logo
- App icons: Files Icon (folder with S logo) - 50 icon files present
- Intro screens: Updated to Seventh Star branding
- Login screen: Sign up/host buttons hidden
- More page: NextCloud Notes and More Apps hidden
- Settings: "Based on Nextcloud Server" text removed
- Acknowledgements: Updated and reorganized
- Terms of Service: https://seventhstar.co.za/terms-of-service/

### Permissions & Privacy
✅ **All permission descriptions updated to "Seventh Star":**
- Camera access
- Microphone access
- Photo library access
- Location access (background, when in use, always)
- Face ID access

✅ **Privacy Manifest (PrivacyInfo.xcprivacy) present:**
- System Boot Time API
- User Defaults API
- File Timestamp API
- Disk Space API
- Active Keyboards API

### Localization
✅ No user-visible "Nextcloud" references found in localization files
- Only comments contain "Nextcloud" (developer notes)

## ⚠️ Issues to Resolve

### 1. Swift Package Manager Dependencies (CRITICAL)
**Status**: Failing - must be resolved before building

**Failed packages:**
- OpenSSL (revision: 623c84da314e85363236507ca38a4bde65df21c3)
- Firebase (revision: 541ac342abead313f2ce0ccf33278962b5c1e43c)

**How to fix:**
1. Open `Nextcloud.xcodeproj` in Xcode
2. Go to **File → Packages → Reset Package Caches**
3. Go to **File → Packages → Resolve Package Versions**
4. Wait for all packages to download and resolve
5. Build the project to verify dependencies are working

### 2. Test Target Names (Low Priority)
**Status**: Not critical for App Store deployment

The following test targets contain "Nextcloud" in their bundle identifiers:
- `za.co.seventhstar.iosUITests.NextcloudUITests`
- `za.co.seventhstar.iosIntegrationTests.NextcloudIntegrationTests`

These are internal test targets that don't get submitted to the App Store. If desired, you can rename them in Xcode, but it's not required for App Store deployment.

## 📋 App Store Submission Checklist

### Before Building
- [ ] Open project in Xcode 15 or later
- [ ] Resolve Swift Package Manager dependencies (see above)
- [ ] Select your Team in Signing & Capabilities for all targets
- [ ] Configure provisioning profiles for:
  - Main app
  - All 7 extensions/widgets (File Provider, Share, Notification Service, etc.)

### Code Signing
- [ ] Create App ID in Apple Developer Portal: `za.co.seventhstar.ios`
- [ ] Create App IDs for all extensions with proper suffixes
- [ ] Generate distribution certificates and provisioning profiles
- [ ] Enable required capabilities:
  - [ ] App Groups: `group.za.co.seventhstar`
  - [ ] Push Notifications
  - [ ] Background Modes (audio, fetch, processing, remote-notification, location)
  - [ ] FileProvider extension support

### Build & Archive
- [ ] Clean build folder (Product → Clean Build Folder)
- [ ] Build for "Any iOS Device (arm64)"
- [ ] Archive the app (Product → Archive)
- [ ] Validate the archive before uploading
- [ ] Upload to App Store Connect

### App Store Connect Setup
- [ ] Create new app in App Store Connect
  - Bundle ID: `za.co.seventhstar.ios`
  - App Name: Seventh Star
- [ ] Upload app icons (1024x1024 PNG)
- [ ] Create screenshots for required device sizes:
  - 6.7" Display (iPhone 15 Pro Max)
  - 6.5" Display (iPhone 11 Pro Max)
  - 5.5" Display (iPhone 8 Plus)
  - 12.9" iPad Pro
- [ ] Write app description
- [ ] Add keywords
- [ ] Set privacy policy URL: https://seventhstar.co.za/terms-of-service/
- [ ] Fill out App Privacy questions based on PrivacyInfo.xcprivacy
- [ ] Add support URL
- [ ] Set app category (Education?)
- [ ] Set age rating

### Testing
- [ ] Test on physical device (not just simulator)
- [ ] Verify launch screen appears correctly
- [ ] Verify all logos appear correctly (white on red, red on white)
- [ ] Test login flow
- [ ] Test file upload/download
- [ ] Verify no "Nextcloud" branding appears anywhere
- [ ] Test all extensions (Share, File Provider, Widget)
- [ ] Test push notifications

### Final Review
- [ ] App Review Information filled out
- [ ] Export Compliance information completed
- [ ] Submit for review

## 🔧 Technical Notes

### Project Structure
```
Seventh Star/
├── Brand/
│   ├── Custom.xcassets/
│   │   ├── AppIcon.appiconset/ (50 icons)
│   │   ├── logo.imageset/ (launch screen - white)
│   │   ├── brandElement.imageset/ (nav bar - red)
│   │   └── intro1.imageset/ (intro screen - white)
│   ├── LaunchScreen.storyboard
│   ├── iOSClient.plist
│   └── [Extension plists]
├── iOSClient/
│   ├── PrivacyInfo.xcprivacy
│   └── Supporting Files/
│       └── en.lproj/Localizable.strings
└── Nextcloud.xcodeproj/
```

### Key Files Modified for Branding
1. **Brand/NCBrand.swift** - Colors, URLs, app configuration
2. **Brand/iOSClient.plist** - Main app Info.plist
3. **Brand/LaunchScreen.storyboard** - Splash screen
4. **iOSClient/Settings/NCSettingsModel.swift** - Removed footer text
5. **iOSClient/More/Cells/NCMoreAppSuggestionsCell.swift** - Hidden Notes
6. **Brand/Intro/NCIntroViewController.swift** - Hidden sign up buttons

### Firebase Configuration
The app uses **GoogleService-Info.plist** for Firebase integration:
- Bundle ID: `za.co.seventhstar.ios`
- Ensure this file is properly configured for your Firebase project

## 📱 Device Testing Recommendations

Test on these device types at minimum:
- iPhone SE (small screen)
- iPhone 15 Pro (standard size)
- iPhone 15 Pro Max (large screen)
- iPad Pro 12.9" (tablet)

## 🚀 Next Steps

1. **Immediate**: Resolve Swift Package Manager dependencies in Xcode
2. **Configure signing**: Set up your Apple Developer account and certificates
3. **Build & test**: Create an archive and test on physical devices
4. **Prepare metadata**: Write app description, take screenshots
5. **Submit**: Upload to App Store Connect and submit for review

## 📞 Support

- Seventh Star Website: https://seventhstar.co.za
- Terms of Service: https://seventhstar.co.za/terms-of-service/
- Based on Nextcloud iOS (GPL-3.0-or-later)

---

**Status**: Ready for App Store deployment pending dependency resolution and code signing configuration.
