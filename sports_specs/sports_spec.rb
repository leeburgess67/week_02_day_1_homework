require ("minitest/autorun")
require_relative ("../sports.rb")
require ("minitest/rg")


class SportsTeamTest < MiniTest::Test

  def test_get_team_name()
      team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")
      assert_equal("Celtic", team.get_team_name())

  end
  #
  def test_get_players()
      team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")

      assert_equal(["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], team.get_players())

  end

  def test_get_coach()
      team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")
      assert_equal("Brendan Rodgers", team.get_coach)
    end


    def test_coach_name_can_update
        team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")
        team.update_coach("Pep Guardiola")
        assert_equal("Pep Guardiola", team.get_coach)
      end





end
