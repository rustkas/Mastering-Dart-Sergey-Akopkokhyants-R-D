class Configuration {
  static Configuration _configuration;

  factory Configuration() {
    _configuration ??= Configuration._();
    return _configuration;
  }

  String dbName;

  Configuration._();
}
