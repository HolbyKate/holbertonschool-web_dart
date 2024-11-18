// Calculate points of teams in Basketball
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    // Calculate points for teams using helper function

int calculatePoints(Map<String, int> team) {
    return team['Free throws']! +
           team['2 pointers']! * 2 +
           team['3 pointers']! * 3;
}
// Calculate total point
final teamAPoints = calculatePoints(teamA);
final teamBPoints = calculatePoints(teamB);

if (teamAPoints == teamBPoints) return 0;
return teamAPoints > teamBPoints ? 1 : 2;
}
