# Whimsy Character Creator

A local, offline-first character creation and management application for Dungeons & Dragons (2024 Ruleset) and custom homebrew content (e.g., Valda's Spire of Secrets). Built with Flutter, this application utilizes a strictly-typed NoSQL local database to act as an offline rulebook and real-time state engine for character progression.

## Current Status
**🟢 Phase 1 (Database Architecture) is COMPLETE.**
The local NoSQL database is fully modeled, and the automated ETL (Extract, Transform, Load) pipeline for ingesting AI-generated JSON rule data is operational.

**Next Up:** Establishing the CI/CD pipeline (Phase 1.5) and building the Riverpod State Engine (Phase 2).

---

## Technical Stack
* **Framework:** Flutter (Targeting Linux Desktop / Web / Mobile)
* **Database:** Isar (High-performance, offline-first NoSQL)
* **State Management:** Riverpod (Reactive state engine)
* **Code Generation:** `build_runner` and `isar_generator`
* **Data Ingestion:** Google AI Studio (Strict JSON generation for ETL pipeline)

---

## Development Roadmap & Architecture Plan

### ✅ Phase 1: Database Architecture & ETL Pipeline (Complete)
**Objective:** Establish a local, offline-first data layer to hold the immutable rulebook and dynamic player saves.
* **Accomplishments:**
  * Implemented strictly-typed Isar collections for `DndClass`, `Species`, `Background`, and `Feat`.
  * Created the `ActiveCharacterSave` schema to act as the relational bridge between the static rulebook and mutable player state.
  * Built the `DatabaseInitializer` to run a transaction on app startup that reads `assets/` JSON files and seamlessly seeds the Isar database.
  * Stabilized the JSON deserialization pipeline by strictly enforcing `.map<Type>()` casting to prevent Dart dynamic type crashes.
  * Validated the complete ingestion of MVP assets: *Warmage* (Class), *Plushie* (Species), *Criminal* (Background), and *Alert* (Feat).

### ⏳ Phase 1.5: CI/CD Infrastructure (Up Next)
**Objective:** Establish a robust automated pipeline to ensure code quality and build stability across environments.
* **Tasks:**
  * Configure GitHub Actions workflows for continuous integration.
  * Implement `flutter analyze` to enforce strict linting and catch typing regressions.
  * Set up automated build verification (e.g., `flutter build linux` and `flutter build web`) to catch dependency or C++ linker failures before merging.
  * Prepare test runner hooks for Phase 2 logic testing.

### 📝 Phase 2: The State Engine (Riverpod)
**Objective:** Build the reactive "Player Sheet" that bridges the static rulebook with real-time gameplay state.
* **Tasks:**
  * Create the `ActiveCharacterNotifier` to hold the current `ActiveCharacterSave` state.
  * Build the logic to fetch static Isar data (e.g., Warmage hit dice, Plushie base speed) and dynamically merge it with the player's current level and choices.
  * Implement state mutation methods (e.g., `takeDamage()`, `addItem()`, `levelUp()`) that broadcast UI updates and automatically persist to the Isar database.

### 📝 Phase 3: The Rules & Logic Engine
**Objective:** Codify the core D&D 2024 mechanics to automate character math.
* **Tasks:**
  * Implement ability score modifier calculation.
  * Automate proficiency bonus scaling based on character level.
  * Build the logic to calculate Maximum HP (Hit Die + Constitution modifier per level).
  * Handle dynamic choices (e.g., selecting a subclass at Level 3, picking spells).

### 📝 Phase 4: The UI Shell
**Objective:** Build the interactive frontend.
* **Tasks:**
  * Design the Character Creation wizard (Step-by-step Class, Species, Background, and Stat generation).
  * Build the active "Digital Character Sheet" dashboard for gameplay (HP tracking, spell slots, inventory management).
  * Ensure reactive UI updates driven by the Riverpod state engine.

---

## Local Development Setup

**1. Clone the repository and install dependencies:**
```bash
flutter pub get