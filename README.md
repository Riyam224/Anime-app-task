
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
  - Anime genre tags, view counters, and plan cards
- 🌈 **UI Styling**:
  - Gradient backgrounds
  - Blurred eclipse overlays (`ImageFiltered`)
  - Fixed bottom action container
- 📜 **Scrollable Details Page**:
  - Anime description text expands fully when scrolling
  - Genres, views, and meta-info sections
- 🎥 **Interactive Cards**:
  - Anime list with posters, ratings, and details navigation
  - Character list with circular avatars
- 💳 **Upgrade Plan Page**:
  - Pricing cards (`Monthly`, `Annually`)
  - Call-to-action button with custom design
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
│   │   ├── data/                  # (future: datasources, models)
│   │   ├── domain/                # Entities, usecases
│   │   └── presentation/          # UI layer
│   │       ├── views/             # Home & MainView screens
│   │       └── widgets/           # AnimeList, CharactersList, CategoriesItems
│   │
│   ├── details/                   # Anime details module
│   │   ├── data/                  # (future: datasources, models)
│   │   ├── domain/                # Entities, usecases
│   │   └── presentation/          # Details screen UI
│   │       ├── views/             # DetailsView
│   │       └── widgets/           # GenresList, AnimeViewsInfo, Line
│   │
│   └── upgrade_plan/              # Subscription upgrade module
│       ├── data/                  # (future: datasources, models)
│       ├── domain/                # Entities, usecases
│       └── presentation/          # Upgrade Plan UI
│           ├── views/             # UpgradePlanView
│           └── widgets/           # PlanCard
│
├── main.dart                      # Entry point

---

## 📂 Assets

assets/
├── fonts/
│   ├── NewRocker/                 # “DEMON SLAYER” heading font
│   └── Raleway/                   # App-wide font family
└── images/                        # Posters, icons, eclipse effects

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

🛠 Widgets Overview
 • CustomButtonWithIcon → Rounded button with icon & text (used for Preview / Watch Now).
 • CustomButton → Reusable pill button for genres like Action, Adventure, Dark Fantasy.
 • AnimeList → Horizontal list of anime cards with rating badges.
 • CharacterList → Horizontal scrollable list of character avatars.
 • GenresList → Centered row of category buttons.
 • AnimeViewsInfo → Row of views, claps, and seasons.
 • PlanCard → Subscription pricing UI with icon, title, and check circle.

⸻

📖 What This Project Demonstrates
 • How to structure a Flutter app with Clean Architecture.
 • How to build reusable custom widgets (buttons, cards, lists).
 • How to use Stack + Positioned for complex layouts.
 • How to apply blur & gradient effects to backgrounds.
 • How to keep bottom buttons fixed while scrolling the content above them.
 • How to create animated route transitions with go_router.

⸻

👤 Author

Built with ❤️ by Riyam

---
