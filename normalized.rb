require "./path.rb"

class NormalizedClass
#関数値、期待値でない場合はBoolean型、期待値ならString型
#標準入力で入力内容に記号が含まれていないか、文字列が1以上ないか確認する関数。戻り値は期待値以外はtrue、期待値はstring
def normalized(input, pattern, input_length, menu_array)
  case
  when $input.match?($pattern) == true #menuに記号がないか比較して評価する
    return true
  when ($input_length == 1) == false #menuの入力値長さが1文字以上か比較して評価する
    return true
  when $menu_array.include?($input) == false #menuにない数値が入力された比較して評価する
    return true
  else
    return menu_number = $input #menuの数が入力されたら、変数に代入する
  end
end

#read.rbの関数処理、引数の型によって別て戻り値に真偽値を返す
def read_normalized(value_exists, normalized_input)
if $value_exists == true
    return true
  elsif $normalized_input == false
    return false
  end
end

#write.rbの関数処理、引数の型によって別て戻り値に真偽値を返す
def write_normalized(value_exists, normalized_input)
  case
  when $value_exists == true || $normalized_input == true
    return true
  when $value_exists == false || $normalized_input == true
    return false
  when $value_exists == false || $normalized_input == false
    return false
  end
end

#関数処理、引数の型によって別て戻り値に真偽値を返す
def delete_normalized(value_exists, normalized_input)
if $value_exists == true
  return true
elsif $ormalized_input == false
  return false
end
end

end

class DirClass
  #メモの保存ディレクトリを配列化、entriesメソッドでディレクトリに記号が入る為、配列を再作成
  def filedir(dir_path)
      #メモの保存ディレクトリを配列化
    file_dir = Dir.entries($dir_path)
  
    #dropメソッドで不要な要素を取り除いて配列を生成
    file_dir = file_dir.drop(2)
    
    return file_dir
  end
    
  #メモの保存ディレクトリを標準出力
  def dir_path(file_dir)
  $file_dir.each do |entry| 
  end
  end
end
