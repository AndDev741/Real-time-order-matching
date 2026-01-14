import '../../../domain/entities/Trader.dart';

abstract class TraderRepository {
  List<Trader> getAllTraders();
  Trader? getTraderById(int id);
  void addTrader(String name, double initialBalance);
  void updateTrader(Trader trader);
  void deleteTrader(int id);
}