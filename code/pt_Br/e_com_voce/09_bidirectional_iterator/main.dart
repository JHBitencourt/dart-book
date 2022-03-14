class BidirectionalIteratorList<E> implements BidirectionalIterator {
  BidirectionalIteratorList(Iterable<E> iterable, {bool back = false})
      : _iterable = iterable,
        _length = iterable.length,
        _index = back ? iterable.length - 1 : 0;

  final Iterable<E> _iterable;
  final int _length;
  int _index;
  E? _current;

  get current => _current;

  bool moveNext() {
    int length = _iterable.length;
    if (_length != length) throw ConcurrentModificationError(_iterable);
    if (_index >= length) {
      _current = null;
      return false;
    }
    _current = _iterable.elementAt(_index);
    _index++;
    return true;
  }

  bool movePrevious() {
    int length = _iterable.length;
    if (_length != length) throw ConcurrentModificationError(_iterable);
    if (_index < 0) {
      _current = null;
      return false;
    }
    _current = _iterable.elementAt(_index);
    _index--;
    return true;
  }
}

main() {
  final risadas = ['kkk', 'haha', 'rsrs'];

  print('Ordem natural:');
  final iteratorNext = BidirectionalIteratorList(risadas);
  while (iteratorNext.moveNext()) print(iteratorNext.current);

  print('Ordem trás pra frente:');
  final iteratorPrevious = BidirectionalIteratorList(risadas, back: true);
  while (iteratorPrevious.movePrevious()) print(iteratorPrevious.current);
}
