import '../../infrastructure/repository/abstract/TraderRepository.dart';
import '../entities/Trader.dart';

class TraderService {
  final TraderRepository _traderRepository;

  TraderService(this._traderRepository);

  List getAllTraders() {
    return _traderRepository.getAllTraders();
  }

  Trader? getTraderById(int traderId) {
    return _traderRepository.getTraderById(traderId);
  }

  void registerTrader(String name, double initialBalance) {
    _traderRepository.addTrader(name, initialBalance);
  }

  void deleteTrader(int traderId) {
    _traderRepository.deleteTrader(traderId);
  }

}