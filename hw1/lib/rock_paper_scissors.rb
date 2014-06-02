class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if /[RPS]/.match(player1[1]) == nil or /[RPS]/.match(player2[1]) == nil
    	raise NoSuchStrategyError, "Strategy must be one of R,P,S" 	
    end
    return player1 if player1[1] == player2[1]
    if player1[1] == 'R' 
    	if player2[1] == 'S' 
    		return player1
    	else
    		return player2
    	end
    elsif player1[1] == 'P'
    	if player2[1] == 'S'
    		return player2
    	else
    		return player1
    	end
    elsif player1[1] == 'S'
    	if player2[1] == 'P'
    		return player1
    	else
    		return player2
    	end
    end
    	
  end

  def self.tournament_winner(tournament)
  	if tournament[0][1].class == String
  		return winner(tournament[0], tournament[1])
  	else
  		winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
  	end
	    
  end

end
