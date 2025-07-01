import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:league_track/constants.dart';
import 'package:league_track/models/match_result.dart';
import 'package:league_track/models/team_model.dart';
import 'package:meta/meta.dart';

part 'standings_state.dart';

class StandingsCubit extends Cubit<StandingsState> {
  StandingsCubit() : super(StandingsInitial());

  void addMatchResult({
    required String teamA,
    required String teamB,
    required MatchResult result,
  }) {
    final Box<TeamModel> teamsBox = Hive.box<TeamModel>(kTeamBox);

    TeamModel? teamAModel;
    TeamModel? teamBModel;

    // نجيب الفريقين لو موجودين
    for (var team in teamsBox.values) {
      if (team.teamName == teamA) teamAModel = team;
      if (team.teamName == teamB) teamBModel = team;
    }
    teamAModel ??= TeamModel(teamName: teamA);
    teamBModel ??= TeamModel(teamName: teamB);
    if (result == MatchResult.teamAWon) {
      teamAModel.points += 3;
    } else if (result == MatchResult.teamBWon) {
      teamBModel.points += 3;
    } else if (result == MatchResult.draw) {
      teamAModel.points += 1;
      teamBModel.points += 1;
    }
    if (!teamAModel.isInBox) {
      teamsBox.add(teamAModel);
    } else {
      teamAModel.save();
    }

    if (!teamBModel.isInBox) {
      teamsBox.add(teamBModel);
    } else {
      teamBModel.save();
    }
    getTeams();
  }

  void getTeams() {
    final box = Hive.box<TeamModel>(kTeamBox);
    List<TeamModel> teams = box.values.toList();
    teams.sort((a, b) => b.points.compareTo(a.points));
    emit(StandingsLoaded(teams));
  }

  void clearAllTeams() async {
    final box = Hive.box<TeamModel>(kTeamBox);
    await box.clear();
    emit(StandingsLoaded([]));
  }
}
