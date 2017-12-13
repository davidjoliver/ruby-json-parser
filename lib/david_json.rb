class DavidJSON
  def self.parse(json_string)
    return if json_string.nil?
    raise InvalidJSONError if json_string.empty?
    tokens = []
    json_string.each do |token|

    end
    json_string == "[]" ? [] : json_string.to_i
  end
end

class InvalidJSONError < Exception; end
