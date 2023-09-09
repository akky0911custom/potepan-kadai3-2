aiko_flg = 0

loop do

  if aiko_flg == 0

    puts "じゃんけん・・・" 

  end

  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  jankens = ["グー","チョキ","パー","戦わない"]

  my_hand = gets.chomp.to_i #自分が出す手
  enemy_hand = rand(0..2) #相手が出す手

  if my_hand == 3

    puts "逃げるな！卑怯者！"
    redo

  elsif my_hand >= 4

    puts "知らねえ手を使うんじゃねえ！"
    redo

  end

  if aiko_flg == 1

    puts "ショ！"

  end

  puts"------------------------------"
  puts "あなた：#{jankens[my_hand]}"
  puts "相手：#{jankens[enemy_hand]}"
  puts"------------------------------"

  if my_hand == enemy_hand

    puts "あいこで・・・"
    aiko_flg = 1
    acchimuite_hoi_flg = 0

  elsif (my_hand == 0 && enemy_hand == 1) || (my_hand == 1 && enemy_hand == 2) || (my_hand == 2 && enemy_hand == 0)

    janken_win_flg = 1
    acchimuite_hoi_flg = 1

  else

    janken_win_flg = 0
    acchimuite_hoi_flg = 1

  end

  if acchimuite_hoi_flg == 1

    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"

    directions = ["上","下","左","右"]

    my_direction = gets.chomp.to_i #自分が出す指・顔の方向
    enemy_direction = rand(0..3) #相手が向ける顔・指の方向

    puts "ホイ！"

    if janken_win_flg == 0 && my_direction >= 4

      puts "貴様、どこを見ている？"
      aiko_flg = 0
      redo

    elsif janken_win_flg == 1 && my_direction >= 4

      puts "どこを見ろって言ってんだゴラア！"
      aiko_flg = 0
      redo

    end

    puts"------------------------------"
    puts "あなた：#{directions[my_direction]}"
    puts "相手：#{directions[enemy_direction]}"
    puts"------------------------------"

    aiko_flg = 0

  end

  if janken_win_flg == 1 && acchimuite_hoi_flg == 1 && my_direction == enemy_direction

    puts "貴様の勝ちだな！"
    break

  elsif janken_win_flg == 0 && acchimuite_hoi_flg == 1 && my_direction == enemy_direction

    puts "貴様の負けだな！"
    break

  end

end

exit