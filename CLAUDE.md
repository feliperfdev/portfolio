# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter web portfolio application (Felipe.R Dev) showcasing projects, experiences, and technical skills. The app uses a single-page layout with smooth scrolling navigation and is optimized for both desktop and mobile viewports.

## Development Commands

### Build and Run
```bash
# Run the app in debug mode (web)
flutter run -d chrome

# Build for production (web)
flutter build web

# Run tests
flutter test

# Analyze code
flutter analyze
```

### Dependencies
```bash
# Install/update dependencies
flutter pub get

# Clean build artifacts
flutter clean
```

## Architecture

### Core Structure
- **Entry Point**: `lib/main.dart` → `AppWidget` → `HomePage`
- **Models**: Simple data classes (`Project`, `Experience`, `Tech`)
- **ViewModels**: Hold business logic and data lists (projects, experiences, tech stack)
- **Widgets**: Presentational components organized by section
- **Utils**: Helper functions and reusable widgets

### Responsive Design
The app uses a breakpoint-based responsive system:
- **Mobile**: width ≤ 800px
- **Desktop**: width > 800px
- Check responsive state: `isMobileScreen(context)` from `lib/utils/scripts/mobile_responsive.dart`
- Different layouts: `MobileMainInfo` vs `DesktopMainInfo`

### Navigation Pattern
Uses GlobalKeys and ScrollController for section-based navigation:
- `HomeViewModel.scroll`: Main scroll controller
- `HomeViewModel.scrollTo()`: Smooth scrolls to section via GlobalKey
- Sections: Initial, Projects, Experience, Contact
- FloatingActionButton appears when scrolled past viewport height

### Web-Specific Code
The app targets web only and uses `dart:html`:
- `HomeViewModel.downloadCurriculum()`: Downloads PDF from GitHub using Blob API
- Ignores deprecated warnings for `dart:html` imports

## Key Patterns

### ViewModels
ViewModels are data holders, not reactive state managers:
- `ProjectsViewModel`: Contains hardcoded list of projects
- `ExperiencesViewModel`: Contains work experience entries
- `TechViewModel`: Contains tech stack with asset paths
- `SocialViewModel`: Contains social media links
- `HomeViewModel`: Manages scrolling and curriculum download

### Data Models
All models use `final class` pattern:
- `Project`: name, description, imagePath, url, techList
- `Experience`: title, location, date, description, optional techs
- `Tech`: name, optional color/image, has helpers `hasImage` and `isSvg`

### Assets
Assets are referenced directly as strings:
- Images: `assets/images/` (projects, logos)
- Tech icons: `assets/images/tech/` (PNG format preferred)
- Fonts: `assets/fonts/` (GasoekOne, Gantari)
- All assets must be declared in `pubspec.yaml`

## Common Modifications

### Adding a New Project
Edit `lib/view_model/projects_view_model.dart`:
```dart
Project(
  name: 'Project Name',
  description: 'Description in Portuguese',
  imagePath: 'assets/images/project.png',
  url: 'https://example.com',
  techList: [
    Tech(name: 'Flutter', color: Colors.blueAccent),
  ],
)
```

### Adding a New Experience
Edit `lib/view_model/experiences_view_model.dart`:
```dart
Experience(
  title: 'Job Title',
  location: 'Company Name',
  date: 'MM/YYYY - MM/YYYY',
  description: '''Description in Portuguese''',
  techs: [], // Optional
)
```

### Adding a New Tech Icon
1. Add image to `assets/images/tech/`
2. Update `lib/view_model/tech_view_model.dart`:
```dart
Tech(name: 'TechName', image: 'assets/images/tech/icon.png')
```

### Updating Social Links
Edit `lib/view_model/social_view_model.dart`

## Theme and Styling

- **Background**: Black (`Colors.black`)
- **Primary Color**: Purple (`0xff4E3EE6`)
- **Fonts**:
  - GasoekOne: Titles
  - Gantari: Body text
- **Responsive sizing**: Based on `isMobileScreen()` helper

## Deployment

This project is configured for Vercel deployment (`.vercel/` directory present). Build output goes to `build/web/`.
