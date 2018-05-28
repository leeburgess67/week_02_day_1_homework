class SportsTeam
attr_reader(:team_name, :players)
attr_accessor(:coach, :points)

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach()
  #   return @coach
  # end

  def update_coach(new_coach_name)
    @coach = new_coach_name
  end

  def add_new_player(player_name)
    @players << player_name
  end

  def check_player(name_to_check)
    return "Yes, he is in the team" if @players.include?(name_to_check)
  end


def win_or_lose(result)
@points += 3 if result == "win"
end











end
