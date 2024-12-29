class calculoA{
  String _h='', _b='';//minha solução foi por null
  String get h => _h;
  String get b => _b;

  String get area => (double.parse(_b)*double.parse(_h)/2).toString();
  set valorH(h){
  return _h = h;
}
  set valorB(b){
    return _b = b;
  }
}