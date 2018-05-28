require ("minitest/autorun")
require_relative ("../sports.rb")
require ("minitest/rg")


class SportsTeamTest < MiniTest::Test

  def test_get_team_name()
      team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")
      assert_equal("Celtic", team.team_name())

  end
  #
  def test_get_players()
      team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")

      assert_equal(["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], team.players())

  end

  def test_get_coach()
      team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")
      assert_equal("Brendan Rodgers", team.coach)
    end


    def test_coach_name_can_update
        team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")
        team.update_coach("Pep Guardiola")
        assert_equal("Pep Guardiola", team.coach)
      end

      def test_add_new_player
              team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")
              team.add_new_player("Rogic")
              assert_equal(["Gordon", "Boyata", "Brown", "Dembele", "Eduard", "Rogic"], team.players)

      end

      def test_if_player_in_team
        team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")

        assert_equal("Yes, he is in the team", team.check_player("Eduard"))
      end


      def test_if_won_or_lost
        team = SportsTeam.new("Celtic", ["Gordon", "Boyata", "Brown", "Dembele", "Eduard"], "Brendan Rodgers")
        team.win_or_lose("win")
        assert_equal(3, team.points)
      end







end
