class Football_matchList {
  final String team1, team2;
  final int teamscore1, teamscore2;
  final String date, time;
  final String team_flag1, team_flag2;

  Football_matchList(this.team1, this.team2, this.teamscore1, this.teamscore2,
      this.date, this.time, this.team_flag1, this.team_flag2);
  static List<Football_matchList> fetchAll() {
    return [
      Football_matchList("الدنمارك", "السويد", 3, 0, "18:30", "IVابريل",
          "images/finland.png", "images/russia.png"),
      Football_matchList("فرنسا", "المانيا", 0, 1, "18:30", "IVابريل",
          "images/france.png", "images/germany.png"),
      Football_matchList("بولاندا", "أسبانيا", 2, 1, "18:30", "IVابريل",
          "images/poland.png", "images/spain.png"),
      Football_matchList("انجلترا", "كرواتيا", 1, 1, "18:30", "IVابريل",
          "images/england.png", "images/croatia.png"),
      Football_matchList("الدينمارك", "البرتغال", 2, 1, "18:30", "IVابريل",
          "images/denmark.png", "images/portugal.png")
    ];
  }
}
