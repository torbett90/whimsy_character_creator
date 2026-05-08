# Whimsy Character Creator

A local, offline-first character creation and management application for Dungeons & Dragons (2024 Ruleset) and custom homebrew content. Built with Flutter, this application utilizes a strictly-typed NoSQL local database to act as an offline rulebook and real-time state engine for character progression.

## Current Status
**🟢 Phase 1, 1.5, and 2 are COMPLETE.**
The local NoSQL database is seeded, the self-healing CI/CD pipeline enforces strict compilation on native targets, and the Riverpod state engine successfully hydrates dynamic player saves against the static rulebook.

**Next Up:** Phase 3 (The Rules & Logic Engine).

---

## Technical Stack
* **Framework:** Flutter (Targeting Linux Desktop / Mobile) *Note: Web target dropped due to Isar native 64-bit integer constraints in JavaScript.*
* **Database:** Isar (High-performance, offline-first NoSQL)
* **State Management:** Riverpod (Reactive state engine) & Freezed (Immutable State DTOs)
* **Code Generation:** `build_runner`, `isar_generator`, `riverpod_generator`, and `freezed`
* **Data Ingestion:** Google AI Studio (Strict JSON generation for ETL pipeline)

---

## Development Roadmap & Architecture Plan

### ✅ Phase 1: Database Architecture & ETL Pipeline (Complete)
**Objective:** Establish a local, offline-first data layer to hold the immutable rulebook and dynamic player saves.
* **Accomplishments:**
  * Implemented strictly-typed Isar collections for `DndClass`, `Species`, `Background`, and `Feat`.
  * Built the `ActiveCharacterSave` schema to act as the relational bridge.
  * Operational JSON ETL pipeline inside `DatabaseInitializer` to seed MVP assets.

### ✅ Phase 1.5: CI/CD Infrastructure (Complete)
**Objective:** Establish a robust automated pipeline to ensure code quality and build stability.
* **Accomplishments:**
  * GitHub Actions configured for Ubuntu runners injecting C++ and GTK dependencies.
  * Implemented an automated "Janitor" workflow that self-heals formatting errors and pushes auto-commits back to the branch.
  * `flutter analyze --fatal-warnings` and Linux binary compilation enforced on push to `master`.
  * Purged all generated `.g.dart` and `.freezed.dart` files from version control to prevent PR bloat.

### ✅ Phase 2: The State Engine (Riverpod) (Complete)
**Objective:** Build the reactive "Player Sheet" bridging the static rulebook with real-time state.
* **Accomplishments:**
  * Built `ActiveCharacterNotifier` to concurrently fetch and merge Isar static rulebook data with the mutable `ActiveCharacterSave`.
  * Implemented optimistic UI mutations (e.g., `takeDamage`) backed by background Isar transactions for 60fps responsiveness.
  * Validated UI binding via `ConsumerWidget` test harness.

### ⏳ Phase 3: The Rules & Logic Engine (Up Next)
**Objective:** Codify the core D&D 2024 mechanics directly into the Dart application layer.
* **Tasks:**
  * Hard-code core logic (ability modifiers, proficiency bonus scaling) directly into the app layer for maximum performance, avoiding PDF parsing or external data reliance.
  * Build the logic to calculate Maximum HP dynamically (Hit Die + Constitution modifier per level) to populate the Isar `maxHp` field.
  * Implement dynamic choice resolvers (e.g., subclass selection, skill proficiencies).

### 📝 Phase 4: The UI Shell
**Objective:** Build the interactive frontend.
* **Tasks:**
  * Design the Character Creation wizard.
  * Build the active "Digital Character Sheet" dashboard for gameplay.

---

## Local Development Setup

Because generated files are explicitly ignored in version control, **you must run the code generator locally** after cloning or pulling new branches.

**1. Clone the repository and install dependencies:**
```bash
flutter pub get
```

**2. Generate Isar, Riverpod, and Freezed models:**
```bash
dart run build_runner build --delete-conflicting-outputs
```

**3. Run the Linux Desktop application:**
```bash
flutter run -d linux
```