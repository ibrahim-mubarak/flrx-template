class AppState {
  int _counter = 0;

  int get counter => _counter;

  AppState(this._counter);

  factory AppState.initialState() => AppState(0);
}
