part of 'standings_cubit.dart';

@immutable
sealed class StandingsState {}

final class StandingsInitial extends StandingsState {}
final class StandingsUpdated extends StandingsState {}
class StandingsLoaded extends StandingsState {
  final List<TeamModel> teams;

  StandingsLoaded(this.teams);
}
