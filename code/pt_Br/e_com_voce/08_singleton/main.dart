/// Singleton com Factory
class SingletonUm {
  SingletonUm._();

  static final SingletonUm _instance = SingletonUm._();

  factory SingletonUm() {
    return _instance;
  }
}

/// Singleton com get
class SingletonDois {
  SingletonDois._();

  static final SingletonDois _instance = SingletonDois._();

  static SingletonDois get instance {
    return _instance;
  }
}

/// Singleton com static
class SingletonTres {
  SingletonTres._();

  static final SingletonTres instance = SingletonTres._();
}

main() {
  SingletonUm a = SingletonUm();
  SingletonUm b = SingletonUm();
  print('SingletonUm identical: ${identical(a, b)}');

  SingletonDois c = SingletonDois.instance;
  SingletonDois d = SingletonDois.instance;
  print('SingletonDois identical: ${identical(c, d)}');

  SingletonTres e = SingletonTres.instance;
  SingletonTres f = SingletonTres.instance;
  print('SingletonTres identical: ${identical(e, f)}');
}
