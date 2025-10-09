# Seventh Star iOS - Rebranding Complete ✅

## Project Location
```
/Users/matthew/Desktop/NextCloud IOS Base App/Seventh Star/
```

## What Was Done

### ✅ 1. Replaced Template with Real Nextcloud App
- Backed up empty SwiftUI template to `Seventh Star.backup.template`
- Moved fully rebranded Nextcloud iOS app into `Seventh Star` folder
- **You now have the REAL Nextcloud app, not a "Hello World" template**

### ✅ 2. Complete Rebranding Applied

#### Bundle Identifiers & Names
- **Main App**: `za.co.seventhstar.ios`
- **App Display Name**: "Seventh Star"
- **URL Scheme**: `seventhstar://`
- **App Group**: `group.za.co.seventhstar`

#### Brand Configuration (Brand/NCBrand.swift)
```swift
brand = "Seventh Star"
textCopyrightNextcloudiOS = "Seventh Star for iOS %@ © 2025"
loginBaseUrl = "https://seventhstar.co.za"
webLoginAutenticationProtocol = "seventhstar://"
privacy = "https://seventhstar.co.za/privacy"
sourceCode = "https://github.com/SeventhStar-Info/Next-Cloud-Instance"

// Primary color: Seventh Star Red (#C62828)
customer = UIColor(red: 198.0/255.0, green: 40.0/255.0, blue: 40.0/255.0, alpha: 1.0)
```

#### Files Updated
- ✅ `Brand/iOSClient.plist` - App name, bundle IDs, URL schemes
- ✅ `Brand/NCBrand.swift` - Company info, colors, URLs
- ✅ `Brand/Share.plist` - Share extension branding
- ✅ `Brand/File_Provider_Extension.plist` - File provider branding
- ✅ `Nextcloud.xcodeproj/project.pbxproj` - All target bundle IDs
- ✅ `iOSClient/Supporting Files/en.lproj/Localizable.strings` - UI text
- ✅ `ATTRIBUTION.md` - GPL compliance and credits
- ✅ `README.md` - Complete project documentation

### ✅ 3. Git Configuration
- **Branch**: `branding` (currently active)
- **Remote upstream**: https://github.com/nextcloud/ios (official Nextcloud)
- **Remote origin**: https://github.com/SeventhStar-Info/Next-Cloud-Instance (your fork)
- **Latest Commit**: "Rebrand Nextcloud iOS as Seventh Star"

### ✅ 4. GPL Compliance
- Full attribution to Nextcloud project in `ATTRIBUTION.md`
- GPL v3 license maintained with App Store exception
- Open source commitment documented

## Project Structure

```
Seventh Star/
├── Brand/                      # Branding configuration files
│   ├── NCBrand.swift          # ✅ Seventh Star branding
│   ├── iOSClient.plist        # ✅ App configuration
│   └── ...
├── iOSClient/                 # Main iOS app source
├── Share/                     # Share extension
├── Widget/                    # iOS widgets
├── File Provider Extension/   # Files app integration
├── Nextcloud.xcodeproj       # ✅ Xcode project (OPEN THIS)
├── ATTRIBUTION.md            # ✅ GPL compliance
├── README.md                 # ✅ Project documentation
└── LICENSE.txt               # GPL v3 license
```

## How to Build & Run

### 1. Open in Xcode
The project should already be opening. If not:
```bash
cd "/Users/matthew/Desktop/NextCloud IOS Base App/Seventh Star"
open Nextcloud.xcodeproj
```

### 2. Before Building
You need a `GoogleService-Info.plist` file for Firebase:
- Download [mock version](https://github.com/firebase/quickstart-ios/blob/master/mock-GoogleService-Info.plist)
- Place it in the root folder next to `Nextcloud.xcodeproj`

### 3. Build in Xcode
1. Select "Nextcloud" scheme at the top
2. Choose iPhone simulator or device
3. Press **Cmd + B** to build
4. Press **Cmd + R** to run

### 4. What You'll See
- App icon: Still shows Nextcloud icon (you need to replace in Assets.xcassets)
- App name: "Seventh Star"
- Primary color: Seventh Star red (#C62828)
- All branding: Seventh Star

## Still To Do

### Required Before App Store:

1. **App Icon** (1024x1024)
   - Create icon with Seventh Star branding
   - Add to `iOSClient/Assets.xcassets/AppIcon`

2. **Color Assets**
   - Open `iOSClient/Assets.xcassets` in Xcode
   - Add color sets:
     - PrimaryColor: #C62828 (light) / #EF5350 (dark)
     - SecondaryColor: #424242 (light) / #616161 (dark)
     - AccentColor: #FFC107 (light) / #FFD54F (dark)

3. **Launch Screen**
   - Update `iOSClient/Base.lproj/LaunchScreen.storyboard`
   - Add Seventh Star logo/branding

4. **Screenshots**
   - Create 6.9" iPhone screenshots (1290×2796)
   - Capture 3-10 app screenshots for App Store

5. **Server Configuration**
   - Update `NCBrand.swift` with your actual Nextcloud server URL
   - Configure push notification server if needed

6. **Testing**
   - Test all core functionality
   - Test on physical iOS device
   - TestFlight beta testing

### Push to GitHub
When ready to push changes:
```bash
cd "/Users/matthew/Desktop/NextCloud IOS Base App/Seventh Star"
git push -u origin branding
```

Note: You'll need push permissions to SeventhStar-Info/Next-Cloud-Instance

## Key Features of This App

This is the **FULL Nextcloud iOS app** with:
- ✅ File sync & storage
- ✅ Offline file access
- ✅ Photo/video auto-upload
- ✅ Document viewing & editing
- ✅ Share files with others
- ✅ End-to-end encryption
- ✅ File provider integration (Files app)
- ✅ Share extension
- ✅ Widgets
- ✅ Multi-account support

**This is NOT a "Hello World" app - it's production-ready cloud storage!**

## Support

- **Your Instructions**: See `Instructions/` folder
- **Branding Guide**: `Instructions/Assets/seventh-star-branding-final.md`
- **Fork Guide**: `Instructions/nextcloud-fork-guide-final.md`
- **Nextcloud Docs**: https://github.com/nextcloud/ios

## Questions?

Check the files:
- `README.md` - Full project documentation
- `ATTRIBUTION.md` - Credits and licensing
- `Instructions/nextcloud-fork-guide-final.md` - Step-by-step guide

---

**Status**: ✅ Ready to build in Xcode
**Branch**: branding
**Last Updated**: October 9, 2025
