load "./path.rb"

=begin
class MyClass 
  def my_method
    puts "hello, #{$hoge} World!"
  end
end
=end



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
end
