def first_anagram?(str, compare_str)
  str.chars.permutation.to_a.each do |arr|
    return true  if compare_str==arr.join("")
  end
  false
end

def second_anagram?(str, compare_str)
  return false if str.length!=compare_str.length
  str_dup = str.dup
  compare_str_dup = compare_str.dup
  idx = 0
  while idx<str.length
    char = str[idx]

    str_idx = 0
    while str_idx<str_dup.length
      if str_dup[str_idx]==char
        str_dup.slice!(str_idx)
        break
      end
      str_idx += 1
    end


    compare_str_idx = 0
    while compare_str_idx<compare_str_dup.length
      if compare_str_dup[compare_str_idx]==char
        compare_str_dup.slice!(compare_str_idx)
        break
      end
      compare_str_idx += 1
    end


    idx += 1
  end
  compare_str_dup.length==0 && str_dup.length==0
end

def third_anagram?(str, compare_str)

  sorted_str = str.chars.sort.join
  sorted_compare_str = compare_str.chars.sort.join

  sorted_str == sorted_compare_str
end


def fourth_anagram?(str, compare_str)
  str_hash = Hash.new(0)
  compare_str_hash = Hash.new(0)

  index = 0
  while index < str.length
    str_hash[str[index]] += 1
    compare_str_hash[compare_str[index]] += 1
    index += 1
  end

  str_hash == compare_str_hash
end
