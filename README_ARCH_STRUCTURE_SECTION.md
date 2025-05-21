## Project Structure: Clean Architecture & Package by Feature

This project is structured using a combination of **Clean Architecture** principles and a **Package by Feature** organization. This approach aims to create a codebase that is scalable, maintainable, testable, and easy for developers to navigate.

### Clean Architecture

Clean Architecture, popularized by Robert C. Martin (Uncle Bob), advocates for a clear separation of concerns by dividing the software into layers. The core principles are:

*   **Independent of Frameworks:** The core business logic (Domain layer) should not depend on specific frameworks or libraries for UI, databases, etc.
*   **Testable:** Business rules can be tested without the UI, Database, Web Server, or any other external element.
*   **Independent of UI:** The UI can change easily, without changing the rest of the system. The Business Logic doesn't know or care about the UI.
*   **Independent of Database:** You can swap out Oracle or SQL Server, for Mongo, BigTable, CouchDB, or something else. Your business rules are not bound to the database.
*   **Independent of any External Agency:** In fact, your business rules simply don't know anything at all about the outside world.

The key rule is the **Dependency Rule**: *source code dependencies can only point inwards*. Nothing in an inner layer can know anything at all about something in an outer layer.

In this project, this typically translates to layers like:

1.  **Presentation Layer**: Contains the UI (Flutter widgets) and presentation logic (e.g., BLoCs/Cubits from `flutter_bloc`). This layer depends on the Domain layer. `GetIt` is often used here to access BLoCs/Cubits.
2.  **Domain Layer (Business Logic)**: Contains business objects (Entities) and Use Cases (interactors that orchestrate the flow of data between Presentation and Data layers). This is the core of the application and has no dependencies on outer layers.
3.  **Data Layer**: Contains Repository implementations and Data Sources (e.g., API clients using `Dio` and `Retrofit`, local database access using `Hive`). This layer implements interfaces defined in the Domain layer and handles the actual data retrieval and storage.

**Benefits:**
*   **Testability**: Each layer can be tested independently. Use cases and business logic can be tested without any UI or database.
*   **Maintainability**: Changes in one layer (e.g., updating the UI or swapping a database) have minimal impact on other layers.
*   **Scalability**: Clear boundaries make it easier to add new features or modify existing ones.

### Package by Feature

Instead of organizing files by their type (e.g., a global `widgets/` folder, a global `blocs/` folder), this project groups code by feature. For example:

```
lib/
├── core/                   # Shared utilities, base classes, common widgets
│   ├── network/
│   ├── theme/
│   └── utils/
├── features/
│   ├── authentication/
│   │   ├── presentation/     # Widgets, screens, BLoCs/Cubits for auth
│   │   │   ├── bloc/
│   │   │   └── widgets/
│   │   ├── domain/           # Auth use cases, entities, repository interfaces
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── data/             # Auth repository implementations, data sources
│   │       ├── datasources/
│   │       ├── models/
│   │       └── repositories/
│   ├── product_catalog/
│   │   ├── presentation/
│   │   ├── domain/
│   │   └── data/
│   └── ... (other features)
└── main.dart               # App entry point
└── di_container.dart       # Dependency injection setup (using GetIt)
```

**Benefits:**
*   **Modularity**: Each feature is a self-contained unit, making the codebase more modular.
*   **Easier Navigation**: Developers can quickly find all code related to a specific feature in one place.
*   **Scalability**: Adding, modifying, or removing features is more straightforward as changes are localized.
*   **Reduced Cognitive Load**: When working on a feature, developers primarily focus on that feature's package.
*   **Improved Team Collaboration**: Different teams or developers can work on separate features with fewer merge conflicts.

### Synergy in this Project

By combining Clean Architecture with Package by Feature:
*   Each **feature package** (`lib/features/feature_name/`) internally follows Clean Architecture principles, having its own `presentation`, `domain`, and `data` layers (or similar logical separation).
*   The `core/` directory houses shared components, utilities, and base architectural elements (like generic BLoC states or repository interfaces if applicable across all features) that don't belong to any specific feature but are used by many.
*   `GetIt` is used for dependency injection, making it easy to provide and access dependencies (like BLoCs, Use Cases, Repositories) across different layers and features while respecting the Dependency Rule.

This combined approach provides a robust structure that is both well-organized at a high level (thanks to Package by Feature) and well-architected at a micro-level within each feature (thanks to Clean Architecture).
