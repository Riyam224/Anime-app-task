# 🎬 Anime App Task — Clean Architecture Flutter Project

An elegant anime-themed Flutter application showcasing **Clean Architecture**, **beautiful UI/UX**, and **modern Flutter practices**.  
This project was built to demonstrate **layered architecture**, **custom reusable widgets**, **animations**, and **page navigation** with `go_router`.

---

## 📹 Demo

![Demo](screenshots/demo.gif)

---

## ✨ Features

- 🏛 **Clean Architecture** separation:
  - `core` → shared resources (styles, routing, widgets)
  - `features` → domain-driven feature modules (`home`, `details`, `upgrade_plan`)
- 🎨 **Custom UI Widgets**:
  - Reusable `CustomButton` & `CustomButtonWithIcon`
  - Anime cards, categories row, character list, and plan cards
- 🌈 **UI Styling**:
  - Gradient backgrounds
  - Blurred eclipse overlays (`ImageFiltered`)
  - Fixed bottom action container
- 📜 **Details Page**:
  - Draggable scrollable sheet for description
  - Genres, views, claps, and seasons info
- 🎥 **Home Page**:
  - Anime list with posters and ratings
  - Categories row with pill buttons
  - Horizontal character list with avatars
- 💳 **Upgrade Plan Page**:
  - Pricing cards (`Monthly`, `Annually`) with selection
  - Call-to-action button
  - Decorative background with rocket and stars
- 🚀 **Navigation** with `go_router` and animated transitions

---

## 🏗 Folder Structure

lib/
├── core/                          # Shared, reusable code
│   ├── routing/                   # App routes & GoRouter setup
│   ├── theming/                   # Colors & text styles
│   └── widgets/                   # Shared widgets (buttons, etc.)
│
├── features/
│   ├── home/                      # Home module
│   │   ├── data/                  # (future: datasources, models), repos_impl
│   │   ├── domain/                # Entities, usecases, repos
│   │   └── presentation/          # UI layer
│   │       ├── views/             # Home & MainView screens
│   │       └── widgets/           # AnimeList, CharactersList, CategoriesItems
│   │
│   ├── details/                   # Anime details module
│   │   ├── data/                  # (future: datasources, models) , repos_impl
│   │   ├── domain/                # Entities, usecases, repos
│   │   └── presentation/          # Details screen UI
│   │       ├── views/             # DetailsView
│   │       └── widgets/           # GenresList, AnimeViewsInfo, Line
│   │
│   └── upgrade_plan/              # Subscription upgrade module
│       ├── data/                  # (future: datasources, models) , repos_impl
│       ├── domain/                # Entities, usecases, repos
│       └── presentation/          # Upgrade Plan UI
│           ├── views/             # UpgradePlanView
│           └── widgets/           # PlanCard
│
├── main.dart                      # Entry point

---                     # Entry point

---

## 📂 Assets

assets/
├── fonts/
│   ├── NewRocker/                 # “DEMON SLAYER” heading font
│   └── Raleway/                   # App-wide font family
└── images/                        # Posters, icons, eclipse effects, stars, rocket, etc.

---

## 🚀 Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/Riyam224/Anime-app-task.git
   cd Anime-app-task

2. Install dependencies

flutter pub get

 3. Run the project

flutter run

⸻

📦 Dependencies
 • go_router → declarative routing & transitions
 • flutter_svg → render SVG assets
 • cupertino_icons → iOS-style icons

⸻

🖼 Screens Overview

🏠 Home View
 • Gradient background with positioned SVG stars
 • Categories row with pill buttons
 • Anime list with clickable posters + rating badges
 • Top Characters section
 • Custom bottom navigation bar

📄 Details View
 • Anime title styled with New Rocker font
 • Background blur + decorative eclipses
 • DraggableScrollableSheet for description text
 • Genres row, views, claps, and seasons info
 • Fixed bottom buttons (Preview, Watch Now)

💳 Upgrade Plan View
 • Gradient + star background
 • Upgrade plan title + close button
 • Rocket illustration in the center
 • Pricing cards (Monthly / Annually)
 • Continue button CTA

⸻

🛠 Widgets Overview
 • CustomButtonWithIcon → Rounded button with icon & text (used for Preview / Watch Now)
 • CustomButton → Reusable pill button for genres like Action, Adventure, Dark Fantasy
 • AnimeList → Horizontal list of anime cards with rating badges
 • CategoriesItems → Horizontal selectable categories row
 • CharacterList → Horizontal scrollable list of characters
 • GenresList → Row of category buttons in details screen
 • AnimeViewsInfo → Row of views, claps, and seasons
 • PlanCard → Subscription pricing card with selection indicator

⸻

📖 What This Project Demonstrates
 • How to structure a Flutter app with Clean Architecture
 • How to build reusable custom widgets (buttons, cards, lists)
 • How to use Stack + Positioned for layered layouts
 • How to apply blur & gradient effects to backgrounds
 • How to keep bottom buttons fixed while scrolling content above
 • How to use DraggableScrollableSheet for interactive scrolling
 • How to navigate with go_router cleanly

⸻

👤 Author

Built with ❤️ by Riyam

---
