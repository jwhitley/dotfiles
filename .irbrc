require 'irb/completion'

unless defined?(RUBY_ENGINE) && 'macruby' == RUBY_ENGINE
  require 'irb/ext/save-history'
  ARGV.concat [ "--readline"]
end

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb.hist"

def json_pp(json)
  puts JSON.pretty_generate(json)
end
