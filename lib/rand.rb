players = ["Aurélien", "Samir", "Salomé", "Guillaume", "Florian"]

@group_1 = "Le premier groupe est "
@group_2 = "Le deuxième groupe est "
@group_1_nbr = 0
@group_2_nbr = 0

def dice_throw
	dice = (1 + rand(2))
  return dice
end

def turns(players)
  dice_player = Hash.new
  players.each do |player|
    dice_player[player] = dice_throw
  end
  return dice_player
end

def add_group(player, grp_nbr)
  if grp_nbr == 0
    return player  
  else
    return " avec " + player
  end
end

def groupup_1(player)
  if @group_1_nbr < 2
    @group_1 += add_group(player, @group_1_nbr)
    @group_1_nbr += 1
  else
    @group_2 += add_group(player, @group_2_nbr)
    @group_2_nbr += 1
  end
end

def groupup_2(player)
  if @group_2_nbr < 2
    @group_2 += add_group(player, @group_2_nbr)
    @group_2_nbr += 1
  else
    @group_1 += add_group(player, @group_1_nbr)
    @group_1_nbr += 1
  end
end

def groupup(player_h)
  player_h.each do |player, dice|
    if dice == 1
      groupup_1(player)
    else
      groupup_2(player)
    end
  end
end

groupup(turns(players))

puts @group_1
puts @group_2