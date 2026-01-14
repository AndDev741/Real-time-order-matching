import '../../domain/entities/Trader.dart';
import 'abstract/TraderRepository.dart';

class InMemoryTraderRepository implements TraderRepository {
  final List<Trader> _traders = [];
  int incrementalId = 0;

  @override
  void addTrader(String name, double initialBalance) {
    incrementalId++;
    final trader = Trader(
      id: incrementalId,
      name: name,
      balance: initialBalance,
      createdAt: DateTime.now(),
    );
    
    _traders.add(trader);
  }

  @override
  List<Trader> getAllTraders() {
    return _traders;
  }

  @override
  Trader? getTraderById(int id) {
    final index = _traders.indexWhere((trader) => trader.id == id);
    return index != -1 ? _traders[index] : null;
  }
  
  @override
  void deleteTrader(int id) {
    _traders.removeWhere((trader) => trader.id == id);
  }
  
  @override
  void updateTrader(Trader trader) {
    final index = _traders.indexWhere((t) => t.id == trader.id);
    if (index != -1) {
      _traders[index] = trader;
    }
  }
}