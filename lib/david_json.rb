class DavidJSON
  class << self
    def parse(json_string)
      return if json_string.nil?
      raise InvalidJSONError if json_string.empty?
      contents = ""
      json_string.each_char do |token|
        if token == '['
          next
        elsif token == ']'
          return handle_array_contents(contents)
        else
          contents << token
        end
      end
      Integer(json_string) rescue json_string.to_s
    end

    def handle_array_contents(contents)
      contents.split(",").map do |element|
        parse(element)
      end
    end
  end
end

class InvalidJSONError < Exception; end
