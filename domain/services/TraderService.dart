import '../repository/abstract/TraderRepository.dart';

class TraderService {
  final TraderRepository _traderRepository;

  TraderService(this._traderRepository);

  void listTraders() {
    final traders = _traderRepository.getAllTraders();

    if (traders.isEmpty) {
      print('\nNo traders found.');
      return;
    }

    for (var trader in traders) {
      print('\nTrader ID: ${trader.id}, Name: ${trader.name}, Balance: ${trader.balance}, Created At: ${trader.createdAt}');
    }
  }

  void registerTrader(String name, double initialBalance) {
    _traderRepository.addTrader(name, initialBalance);
  }
}