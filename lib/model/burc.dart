class Burc{
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  String get burcAdi => _burcAdi;

  String get burcTarihi => _burcTarihi;

  String get burcDetayi => _burcDetayi;

  String get burcKucukResim => _burcKucukResim;

  String get burcBuyukResim => _burcBuyukResim;


  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim, this._burcBuyukResim);

  @override
  String toString() {

    return "$_burcAdi - $_burcBuyukResim";
  }

}