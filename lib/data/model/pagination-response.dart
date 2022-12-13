class PaginationResponse {
  late int total_pages;
  late List<dynamic> results;

  PaginationResponse.fromJson(dynamic json) {
    results = json["results"];
    total_pages = json["total_pages"];
  }
}