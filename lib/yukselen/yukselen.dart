class Yukselen{
  final String _burcYukselenAdi ;
  final String _burcYukselenDetayi;
  final String _burcYukselenKucukResim;
  final String _burcYukselenBuyukResim;
  get burcAdi => this._burcYukselenAdi;
  get burcDetayi => this._burcYukselenDetayi;
  get burcKucukResim => this._burcYukselenKucukResim;
  get burcBuyukResim => this._burcYukselenBuyukResim;

 
  Yukselen(
    this._burcYukselenAdi,
    this._burcYukselenDetayi,
    this._burcYukselenKucukResim,
    this._burcYukselenBuyukResim,
    );
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}