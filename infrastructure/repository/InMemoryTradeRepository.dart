import '../../domain/entities/Trade.dart';
import 'abstract/TradeRepository.dart';

class InMemoryTradeRepository implements TradeRepository {
  final List<Trade> _trades = [];
  int incrementalId = 0;

  @override
  void addTrade(Trade trade) {
    incrementalId++;
    _trades.add(trade.copyWith(id: incrementalId));
  }

  @override
  List<Trade> getAllTrades() {
    return _trades;
  }

  @override
  Trade? getTradeById(int id) {
    final index = _trades.indexWhere((trade) => trade.id == id);
    return index != -1 ? _trades[index] : null;
  }

  @override
  void updateTrade(Trade trade) {
    final index = _trades.indexWhere((t) => t.id == trade.id);
    if (index != -1) {
      _trades[index] = trade;
    }
  }

  @override
  void deleteTrade(int id) {
    _trades.removeWhere((trade) => trade.id == id);
  }
}