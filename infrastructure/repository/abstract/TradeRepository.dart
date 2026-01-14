import '../../../domain/entities/Trade.dart';

abstract class TradeRepository {
  List<Trade> getAllTrades();
  Trade? getTradeById(int id);
  void addTrade(Trade trade);
  void updateTrade(Trade trade);
  void deleteTrade(int id);
}