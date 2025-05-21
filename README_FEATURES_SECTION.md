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
