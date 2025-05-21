# flutter_shop

A Flutter project demonstrating a sample book shopping application. This project is built with a focus on Clean Architecture, utilizing BLoC for state management and GetIt for dependency injection. It follows a "Package by Feature" structure for better organization and scalability. The original purpose was to create a sample application for book purchasing (search, cart functionality) using the KaKaoAPI (mocked for this version).

## Key Application Features

The application is organized into several core features, each responsible for a distinct set of functionalities:

*   **Book (`lib/feature/book`)**:
    *   Manages the display of detailed information about individual books.
    *   Likely includes views for book descriptions, author details, cover images, pricing, user reviews, and ratings.
    *   May provide options to add a book to the shopping cart or a wishlist.

*   **Cart (`lib/feature/cart`)**:
    *   Handles all shopping cart functionalities.
    *   Allows users to view items added to their cart, adjust quantities, remove items, and see a summary of their order.
    *   Typically serves as the precursor to the checkout process.

*   **Home (`lib/feature/home`)**:
    *   Serves as the main landing area or dashboard of the application.
    *   Likely showcases featured books, new releases, personalized recommendations, book categories, or ongoing promotions to engage the user.

*   **Main (`lib/feature/main`)**:
    *   Acts as a central coordinator or wrapper for the primary features of the application.
    *   Likely responsible for the main application scaffold, including elements like the bottom navigation bar, app bar, and overall layout that hosts other features.
    *   May handle global UI concerns or initial setup required for the nested features.

*   **Search (`lib/feature/search`)**:
    *   Provides the ability for users to search the application's book catalog.
    *   Users can likely input queries (e.g., title, author, ISBN) to find specific books.
    *   Includes displaying search results and allowing navigation from results to individual book detail pages.

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

## Key Technologies and Libraries

This project leverages a range of modern Flutter technologies and libraries to ensure a robust, maintainable, and efficient application. Here's a look at some of the key components:

### Core Framework
*   **Flutter SDK**: The foundation of the application, enabling cross-platform development from a single codebase with a rich set of pre-built widgets and tools.

### State Management
*   **flutter_bloc**: Implements the BLoC (Business Logic Component) pattern, providing a predictable and scalable way to manage application state by separating UI from business logic.
*   **equatable**: Used in conjunction with `flutter_bloc` to simplify equality comparisons for states and events, preventing unnecessary rebuilds.

### Navigation
*   **go_router**: A declarative routing package that simplifies navigation, making it easier to handle complex deep linking and route management.

### Networking
*   **dio**: A powerful and versatile HTTP client for Dart, used for making API requests. It supports interceptors, FormData, request cancellation, file downloading, timeout, and more.
*   **retrofit**: A type-safe HTTP client generator for `dio`. It generates boilerplate code for API integration based on annotations, reducing manual effort and potential errors.
*   **pretty_dio_logger**: A `dio` interceptor that logs network requests and responses in a readable format, aiding in debugging.
*   **talker_dio_logger**: Integrates `dio` network request logging with the `talker` logging system.

### Data Handling & Storage
*   **freezed / freezed_annotation**: Code generation tools for creating immutable data classes and unions, reducing boilerplate and improving data integrity.
*   **json_serializable / json_annotation**: Used with `freezed` for seamless JSON serialization and deserialization, essential for working with web APIs.
*   **hive / hive_flutter**: A lightweight, fast, and efficient NoSQL database used for local data storage and caching.
*   **hive_generator**: A companion to `hive` for generating TypeAdapters.
*   **dartz**: Provides functional programming constructs, particularly the `Either` type, for robust error handling as an alternative to exceptions.

### Dependency Injection
*   **get_it**: A simple service locator for Dart and Flutter projects, used for decoupling interface and implementation and accessing objects from anywhere in the app.

### UI & UX Enhancements
*   **dynamic_color**: Enables Material You dynamic theming, allowing the app's color scheme to adapt based on the user's wallpaper (on supported Android versions).
*   **cached_network_image**: Displays images from the internet and keeps them in the cache directory, improving performance and providing offline access.
*   **flutter_easyloading**: Provides an easy way to display loading indicators and progress HUDs during asynchronous operations.
*   **fluttertoast**: A simple library for showing toast notifications to the user.
*   **intl**: Used for internationalization (i18n) and localization (l10n), allowing the app to support multiple languages and regional formats.

### Logging & Debugging
*   **talker**: An advanced logger for Dart and Flutter applications, offering features like customizable log levels, formatting, and integration with other tools.
*   **talker_bloc_logger**: Integrates `flutter_bloc` state changes and events with the `talker` logging system for easier debugging of state transitions.
*   **logger**: A simple and extensible logger, potentially used for more basic logging needs or by other libraries.

### Environment Management
*   **flutter_dotenv**: Used to load environment-specific configurations (like API keys or base URLs) from a `.env` file, keeping sensitive data out of version control.

### Development & Build Tools
*   **build_runner**: A build system for Dart that enables code generation for libraries like `freezed`, `json_serializable`, `retrofit_generator`, and `hive_generator`.
*   **flutter_lints**: Provides a set of recommended lints to encourage good coding practices and maintain code quality.

## Getting Started: Setup and Run

Follow these instructions to get the project up and running on your local machine for development and testing purposes.

### Prerequisites

*   **Flutter SDK**: You need to have the Flutter SDK installed on your system. If you haven't already, please follow the official installation guide: [Flutter SDK Installation](https://flutter.dev/docs/get-started/install)
*   **IDE/Editor**: An IDE like Android Studio (with Flutter plugin) or Visual Studio Code (with Flutter extension) is recommended.
*   **Emulator/Device**: Ensure you have an Android Emulator, iOS Simulator, or a physical device connected and configured for development.

### Setup Steps

1.  **Clone the Repository:**
    Open your terminal or command prompt and clone the project repository using Git:
    ```bash
    git clone <repository_url>
    ```
    *(Replace `<repository_url>` with the actual URL of this repository.)*

2.  **Navigate to Project Directory:**
    Change your current directory to the newly cloned project folder:
    ```bash
    cd <project_folder_name>
    ```
    *(Replace `<project_folder_name>` with the name of the project directory.)*

3.  **Install Dependencies:**
    Run the following command to fetch all the necessary Flutter packages and dependencies defined in `pubspec.yaml`:
    ```bash
    flutter pub get
    ```

4.  **Environment Variables:**
    This project uses `flutter_dotenv` to manage environment-specific configurations (like API keys, base URLs, etc.).
    *   Look for a file named `.env.example` in the root of the project.
    *   If it exists, create a copy of this file and name it `.env`:
        ```bash
        cp .env.example .env
        ```
    *   Open the `.env` file and fill in any required values (e.g., API keys, database URLs).
    *   If `.env.example` does not exist, you may need to create a `.env` file manually. Consult with the project maintainers or look for documentation on required environment variables.

5.  **Run the Application:**
    Once the dependencies are installed and environment variables are set up (if applicable), you can run the application on a connected device or emulator:
    ```bash
    flutter run
    ```
    *   If you have multiple devices/emulators connected, `flutter run` will prompt you to choose one.
    *   To run on a specific device, you can use `flutter run -d <device_id>`. You can get a list of available device IDs by running `flutter devices`.

You should now see the application running on your selected device/emulator. Happy coding!
