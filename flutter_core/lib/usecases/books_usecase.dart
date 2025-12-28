// flutter_core/lib/usecases/books_usecase.dart

/// Books (Gospels) use case - lists the 4 Gospels
class BooksUseCase {
  // TODO: Inject EnhancedSupabaseService when migrated

  /// List all Gospel books
  Future<Map<String, dynamic>> listBooks() async {
    // Placeholder - will call actual service
    return {
      'books': [
        {
          'id': '1',
          'name': 'Matthew',
          'abbreviation': 'Matt',
          'chapterCount': 28,
          'verseCount': 1071,
          'description': 'The Gospel according to Matthew',
          'order': 1,
        },
        {
          'id': '2',
          'name': 'Mark',
          'abbreviation': 'Mark',
          'chapterCount': 16,
          'verseCount': 678,
          'description': 'The Gospel according to Mark',
          'order': 2,
        },
        {
          'id': '3',
          'name': 'Luke',
          'abbreviation': 'Luke',
          'chapterCount': 24,
          'verseCount': 1151,
          'description': 'The Gospel according to Luke',
          'order': 3,
        },
        {
          'id': '4',
          'name': 'John',
          'abbreviation': 'John',
          'chapterCount': 21,
          'verseCount': 879,
          'description': 'The Gospel according to John',
          'order': 4,
        },
      ],
      'totalBooks': 4,
    };
  }

  /// Get single book by ID
  Future<Map<String, dynamic>?> getBook(String bookId) async {
    final books = await listBooks();
    final bookList = books['books'] as List<Map<String, dynamic>>;
    return bookList.where((b) => b['id'] == bookId).firstOrNull;
  }
}
