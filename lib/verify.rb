require 'verify/version'
require 'net/http'
require 'uri'

class Verify
  def self.process str
    puts str
  end
  def initialize
    @demo = "i am demo"
    @candidate_id = nil
  end

  def demo
    puts "demo"
  end

  def cid
    puts @candidate_id
  end

end
