part of judo.utility;

extension StringExtension on String {
  T toEnum<T>(List<T> values) {
    return values.firstWhere((e) => e.toString().toLowerCase().split(".").last == '$this'.toLowerCase(), orElse: () => null); //return null if not found
  }

  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

  String uncapitalize() {
    return "${this[0].toLowerCase()}${this.substring(1)}";
  }
}
