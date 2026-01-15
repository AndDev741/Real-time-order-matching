

import '../../infrastructure/repository/abstract/TradeRepository.dart';
import '../entities/Trade.dart';

class TradeService {
  final TradeRepository _tradeRepository;

  TradeService(this._tradeRepository);

  List getAllTrades() {
    return _tradeRepository.getAllTrades();
  }

  Trade? getTradeById(int tradeId) {
    return _tradeRepository.getTradeById(tradeId);
  }

  void createTrade(
    int buyOrderId,
    int sellOrderId,
    double price,
    int quantity,
    DateTime tradeTime,
  ) {
    Trade newTrade = Trade(
      id: 0, // Temporary ID, will be set by repository
      buyOrderId: buyOrderId,
      sellOrderId: sellOrderId,
      price: price,
      quantity: quantity,
      executedAt: tradeTime,
    );

    _tradeRepository.addTrade(newTrade);
  }


}