puts
puts 'each'
puts
a = (1..16).to_a
i = 0;
s = []
a.each {|x|
    s[i] = x
    p s if i == 3
    i = (i + 1) % 4
}
puts
puts 'each_slice'
puts
a = (1..16).to_a
a.each_slice(4) {|s| p s}