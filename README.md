# Whimsy Character Creator - Architectural Blueprint

## 1. System Overview
* **Project Name:** whimsy_character_creator
* **Objective:** A data-driven, local expert system for managing a D&D character, strictly merging the 2024 Core Rules with *Valda's Spire of Secrets*.
* **Core Principle:** Data-driven logic only. The app will NOT store or view PDFs. All rules, spells, and equipment are pre-processed via an ETL pipeline (Google AI Studio) into strict JSON, which the app loads into a local database.
* **MVP Scope:** A strictly local, single-character save system. No legacy 2014 rules support. No embedded AI features in the app.

## 2. Tech Stack
* **Framework:** Flutter (developed in Android Studio Panda 4)
* **State Management:** Riverpod (using Notifier/AutoDisposeNotifier)
* **Local Database:** Isar (NoSQL, heavily indexed for fast rulebook queries)
* **Routing:** `go_router`
* **Data Modeling:** `freezed` and `json_serializable`

## 3. Domain Architecture (The Rulebook Models)
These are immutable Isar collections mapped from the JSON ETL pipeline:
* **DndClass / SubclassData:** Base stats, proficiencies, and `availableSubclasses`. All subclasses universally unlock at Level 3 (2024 ruleset).
* **Species / Background:** Grants starting Ability Score Increases (ASIs), origin feats, and starting wealth.
* **FeatModel:** Categorized (Origin, General, Epic Boon) with prerequisite logic and mandatory ASI attachments for General feats.
* **SpellModel / Equipment:** Tracks standard 2024 properties alongside Valda's specific mechanics (e.g., Switch Weapons, Firearms, Weapon Masteries, and sub-schools like [Chronomancy]).
* **FeatureOptions:** Player choices are driven by `ClassFeature` and `FeatureChoice` objects, allowing the UI to dynamically generate selection menus.

## 4. State Management Engine (Riverpod)
The application separates static rulebook definitions from dynamic player choices.
* **`ActiveCharacterSave` (Isar Database Model):** Stores only IDs (pointers to the rulebook) and highly mutable state (Current HP, expended spell slots, inventory list, and a Map of specific feature selections).
* **`ActiveCharacterNotifier`:** The single source of truth for all character mutations (taking damage, expending spell slots, resting). Automatically saves to Isar on state change.
* **Derived Auto-Calculators (Providers):**
    * `abilityScoresProvider`: Calculates final scores based on Background + Feat ASIs.
    * `maxHpProvider`: Calculates HP based on hit dice and dynamic CON modifier.
    * `armorClassProvider`: Scans equipped items and DEX modifier.
    * `skillModifiersProvider`: Merges Proficiency Bonus, ability scores, and chosen expertise.

## 5. The Level-Up Transaction Flow
Leveling up is handled as an isolated transaction to prevent corrupted state saves.
* Managed by an `AutoDisposeNotifier` (`LevelUpController`).
* Holds a temporary `LevelUpTransaction` state (a "shopping cart" of player choices).
* Guides the user through conditional UI gates:
    * Level 3: Subclass selection.
    * Levels 4/8/12/16/19: Feat & ASI selection.
    * Spell selection (if applicable to the class table).
* Once all prerequisites are met, it commits as a single atomic update to the `ActiveCharacterNotifier`.

## 6. Development Phases
**Phase 1: The Data Pipeline & Infrastructure (ETL & Isar)**
* Finalize the exact JSON schemas for Classes, Spells, Items, Backgrounds, and Feats.
* Generate the JSON artifacts using Google AI Studio.
* Set up the Flutter project, define the `json_serializable` Dart models, and build the `DatabaseInitializer` to seed Isar.

**Phase 2: The Core State & Auto-Calculations (Riverpod)**
* Define the `ActiveCharacterSave` schema in Isar.
* Build the `ActiveCharacterNotifier`.
* Write the derived calculation providers (Ability Scores, AC, HP, Skills, Initiative).
* Write unit tests for the providers to ensure auto-calculations function correctly based on 2024 rules.

**Phase 3: The Presentation Shell (GoRouter & Theming)**
* Establish the `whimsicalTheme` (colors, typography, card shapes).
* Set up `go_router` with a responsive navigation shell (Bottom Bar for mobile, NavigationRail for wide screens).
* Build the static UI layouts for the Combat Dashboard, Spellbook, and Inventory.

**Phase 4: The Level-Up Wizard & Data Binding**
* Build the `LevelUpController` and the transactional data model.
* Create the UI screens for selecting subclasses, feats, and spells.
* Bind the active Riverpod providers to the Presentation Shell to make the UI reactive.

## 7. Current Progress & Next Steps
* **Completed:** Domain models, Riverpod state architecture, Isar database schemas, and Level-up transactional flow designed.
* **Pending Phase 1 (Data Pipeline):** Generating the JSON artifacts for the classes using Google AI Studio at 0.0 temperature, and building the `DatabaseInitializer` in Dart to seed Isar on the first app launch.