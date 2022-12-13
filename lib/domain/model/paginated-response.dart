class PaginatedResponse<T> {
  final int totalPages;
  final List<T> items;

  PaginatedResponse({
    required this.totalPages,
    required this.items
  });
}