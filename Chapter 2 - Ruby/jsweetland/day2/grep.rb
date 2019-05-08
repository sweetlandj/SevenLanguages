args = ARGV
if args.length < 2
    puts 'Usage: ruby grep.rb filename pattern'
    exit
end

filename = args[0]
pattern = args[1]

pattern_regexp = Regexp.new(pattern)

File.foreach(filename).with_index do |line, line_num|
    puts "#{line_num}: #{line}" if line =~ pattern_regexp
end