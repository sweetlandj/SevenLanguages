module ActsAsCsv
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        def each(&block)
            @csv_contents.each &block
        end

        def read
            @csv_contents = []
            filename = self.class.to_s.downcase + ".txt"
            puts filename
            file = File.new(filename)
            @headers = file.gets.chomp.split(', ')

            file.each do |row|
                row_values = row.chomp.split(', ')
                fields = @headers.zip(row_values).to_h
                @csv_contents << CsvRow.new(fields)
            end
        end

        attr_accessor :headers, :csv_contents
        def initialize
            read
        end
    end
end

class CsvRow
    attr_accessor :fields

    def initialize(fields)
        @fields = fields
    end

    def method_missing(name, *args)
        col_name = name.to_s
        return @fields[col_name]
    end
    
    def inspect
        return @fields.inspect
    end
end

class RubyCsv
    include ActsAsCsv
    acts_as_csv
end

m = RubyCsv.new
p m.headers
p m.csv_contents

csv = RubyCsv.new
csv.each {|row| puts row.one}
