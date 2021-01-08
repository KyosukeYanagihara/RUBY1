class Player
    def hand
        puts "数字を入力してください。"
        puts "0:グー, 1:チョキ, 2:パー"
        input_hand = gets.to_i
        while true
            if [0, 1, 2].include?(input_hand)
                return input_hand
            else
                puts "もう一度数字を入力してください。"
                puts "0:グー, 1:チョキ, 2:パー"
                input_hand = gets.to_i
            end 
        end
    end
end 
class Enemy
    def hand
        hand = [0,1,2]
        enemy_hand = hand.sample
        return enemy_hand
    end
end
class Janken
    def pon(player_hand, enemy_hand)
        janken = ["グー", "チョキ", "パー"]
        print "相手の手は#{janken[enemy_hand]}です。"
            result = (player_hand - enemy_hand + 3) % 3
        if  result == 0
            print "あいこ"
            return true
        elsif result == 2
            print "あなたの勝ちです"
            return false
        else
            print "あなたの負けです\n"
            return false
        end
    end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
next_game = true
while next_game
    next_game = janken.pon(player.hand, enemy.hand)
    return true if next_game == false
end

#   ① player = Player.newの記述の意味 = F
#   ② 大文字のPlayerと小文字のplayerの違い = F