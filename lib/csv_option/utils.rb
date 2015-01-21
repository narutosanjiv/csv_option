module CsvOption
  class Utils
    attr_accessor :file
   
    def initialize(file_path)
      @file = file_path
    end

    def first_row
      open(@file).each_line.first    
    end
  
    def full_contents 
      open(@file).read 
    end   
 
    def determine_column_separator(data=nil)
      file_contents = data || first_row 
      counts  = Hash.new(0)
      counts.merge!({"," => 0 , ":" => 0, ";" => 0 , "|" => 0, "\t" => 0 })
      file_contents.each_char do |c|
        next if c.match(/^[[:alpha:]]$/) or c.match(/^[[:digit:]]$/)
        counts[c] += 1
      end
      k,v = counts.max_by{|k,v| v}
      return k  
    end

    def parse_headers
      data = first_row
      col_sep = determine_column_separator(data)
      headers = if data.include?("\r")
        data.split("\r").first.split(col_sep).map{ |a| a.strip.tr('"', '')}.sort
      else
        data.split(col_sep).map{ |a| a.strip.tr('"', '')}.sort
      end
      headers
    end

    def determine_row_separator
      body = full_contents
      counts = {"\n" => 0 , "\r" => 0, "\r\n" => 0}
      quoted_char = false
      body.each_char do |c|
        quoted_char = !quoted_char if c == '"'
        next if quoted_char || c !~ /\r|\n|\r\n/
        counts[c] += 1

      end
      k,v = counts.max_by{|k,v| v}
      return k
    end   
  end
end
