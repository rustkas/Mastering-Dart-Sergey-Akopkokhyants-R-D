class Engine {
  bool started = false;
  void start() {
    started = true;
  }

  void stop() {
    started = false;
  }
}
