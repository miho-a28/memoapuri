require"csv" #csvファイルを扱うためのライブラリの読み込み

puts"1(新規でメモを作成する)  2(既存のメモを編集する)"

memo_type = gets.to_i      #ファイル名の入力、ユーザーの入力値を取得し、数字へ変換している


if memo_type==1           #1が入力された時
    puts"メモを新規作成します。拡張子を除いたファイル名を入力してください。"

    file_name=gets.chomp        #ファイル名をキーボード入力で受付ける、改行コード除去

    p"メモしたい内容を記入してください。"
    p"完了したらCtrl+Dで保存します。"
    
    memo=STDIN.read        #標準入力、複数行入力、ファイルごと読み取る（readlinesは配列）


   CSV.open("#{file_name}.csv","w")do |csv|    #csv出力
   csv<<["#{memo}"]                            #メモで打たれた内容反映
   end
  


elsif memo_type==2             #2が入力された時
    puts"メモを編集します。拡張子を除いた既存のファイル名を入力してください。"

    file_name=gets.chomp       #ファイル名nの入力

    
    p"編集したい内容を記入してください。"
    p"完了したらCtrl+Dで保存します。"

    puts CSV.read("#{file_name}.csv")do|csv|    #ファイルの読み込み
    end

    memo=STDIN.read

    CSV.open("#{file_name}.csv","w")do |csv|
    csv<<["#{memo}"]
    end 

else 
    puts"新規作成なら１を、編集なら２を押してください。"

end
