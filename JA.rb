 puts "最初はグー!じゃんけん..."
 puts "(出す手の数字を選んでください）"
 
def hoi_1
         puts "[0]:右\n[1]:左\n[2]:上\n[3]:下"
         player_choose = gets.to_i
         program_choose = rand(4)
         hois = ["右", "左", "上","下"]
         puts "あなた:#{hois[player_choose]}, PC:#{hois[program_choose]}"   
         if player_choose == program_choose
             puts "あなたの勝ちです"
         else
             puts "残念！もう一度じゃんけんしよう"
             return janken
         end 
end

def hoi_2
         puts "[0]:右\n[1]:左\n[2]:上\n[3]:下"
         player_choose = gets.to_i
         program_choose = rand(4)
         hois = ["右", "左", "上","下"]
         puts "あなた:#{hois[player_choose]}, PC:#{hois[program_choose]}"   
         if player_choose == program_choose
             puts "あなたの負けです"
         else
             puts "セーフ！もう一度じゃんけんしよう"
             return janken
         end
end
 
def janken # jankenメソッドの中でじゃんけん中の処理を書く
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    player_hand = gets.to_i

    program_hand = rand(3)

    jankens = ["グー", "チョキ", "パー"]
    
    case_pattern = ""

    puts "あなたの手:#{jankens[player_hand]}, PC:#{jankens[program_hand]}"

    if player_hand == program_hand
        case_pattern = "あいこ"
        
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        case_pattern = "じゃんけんplayerの勝ち"
      
    elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
        case_pattern = "じゃんけんplayerの負け"
        
    else 
        case_pattern = "Error"
        
    end
    
  case case_pattern
    
    when "あいこ"
       puts "あいこで"
      return janken # あいこの場合、trueを返す(ここは true のみでもOK) 
      
    when "じゃんけんplayerの勝ち"
        puts "じゃんけんに勝ちました"
        puts "次は『あっち向いてほい！』です。どちらを指しますか"
         hoi_1
        
    when "じゃんけんplayerの負け"
        puts "じゃんけんに負けました"
        puts "次は『あっち向いてほい！』です。どちらを向きますか"
         hoi_2
    
    when "Error"
       puts "(error、数字を選びなおしてください)"
      puts "最初はグー! じゃんけん...."
      return janken
    
    end
      
  end # jankenメソッド終わり

janken #jankenメソッドの呼び出し

 
