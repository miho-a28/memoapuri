      puts"じゃんけん..."
    
  def jyanken
      puts"0(グー)1(チョキ)2(パー)3(戦わない)を入力してください"
    
      player_hand=gets.to_i
      computer_hand=rand(0..2)
      hand_type=["グー","チョキ","パー"]
    
    if player_hand==3
        puts"戦いません"
        
    elsif player_hand>3 
     puts"入力が間違っています"
     puts"じゃんけん..."
     return jyanken
     
    else 
    
      puts"ホイ！"
      puts"-----------------------"
      puts"あなた：#{hand_type[player_hand]}を出しました"
      puts"相手：#{hand_type[computer_hand]}を出しました"
      puts"-----------------------"
    
       if player_hand==computer_hand
         puts"あいこで..."
         return jyanken
    
       elsif (player_hand==0 && computer_hand==1)||(player_hand==1 && computer_hand==2)||(player_hand==2 && computer_hand==0)
          puts"勝ち"
          
       else (player_hand==0 && computer_hand==2)||(player_hand==1 && computer_hand==0)||(player_hand==2 && computer_hand==1)
          puts"負け"
        
       end 
    end
  end
  
  def attimuite
      puts"あっち向いて〜"
      puts"0(上)1(下)2(左)3(右)"
      
      player_face=gets.to_i
      computer_face=rand(0..3)
      face_type=["上","下","左","右"]
　　
　　  puts"ホイ！"
      puts"-----------------------"
      puts"あなた：#{face_type[player_face]}を出しました"
      puts"相手：#{face_type[computer_face]}を出しました"
      puts"-----------------------"
      
      
     if player_face==computer_face
         puts"あなたの勝ちです！"
         
     else 
         puts"続きます"
         
     end    
  end    
   

attimuite