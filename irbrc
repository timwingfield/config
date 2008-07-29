require 'rubygems'
require 'irb/ext/save-history'

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true
IRB.conf[:LOAD_MODULES] = []  unless IRB.conf.key?(:LOAD_MODULES)
unless IRB.conf[:LOAD_MODULES].include?('irb/completion')
  IRB.conf[:LOAD_MODULES] << 'irb/completion'
end      

IRB.conf[:SAVE_HISTORY] = 500
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:AUTO_INDENT]  = true

# WHERE ARE WE?
script_console_running = (ENV.include?('RAILS_ENV') and IRB.conf[:LOAD_MODULES].include?('console_with_helpers'))
rails_running = (ENV.include?('RAILS_ENV') and !IRB.conf[:LOAD_MODULES].include?('console_with_helpers'))
irb_standalone_running = (!script_console_running and !rails_running)

IRB.conf[:IRB_RC] = proc do |conf|
  name = "irb: "
  name = "#{ENV['RAILS_ENV']}: " if script_console_running

  leader = " " * name.length
  conf.prompt_i = "#{name}"
  conf.prompt_s = leader + '\-" '
  conf.prompt_c = leader + '\-+ '
  conf.return_format = ('=' * (name.length - 2)) + "> %s\n"
end


unless rails_running
  require 'pp'
  require 'irb/completion'
  require 'tempfile'
  
  # Redirect the Rails Logger to the STDOUT when in script/console
  # if script_console_running
  #   require 'logger'
  #
  #  Object.const_set(:RAILS_DEFAULT_LOGGER, Logger.new(STDOUT))
  # end

  
  # Quick benchmarking. From http://pastie.caboo.se/36012
  def quickbench(repetitions, *blocks)
    require 'benchmark'
    Benchmark.bmbm { |b| blocks.each { |block| b.report { repetitions.times &block } } }
    nil
  end
  
  def enable_trace( event_regex = /^(call|return)/, class_regex = /IRB|Wirble|RubyLex|RubyToken/ )
    puts "Enabling method tracing with event regex #{event_regex.inspect} and class exclusion regex #{class_regex.inspect}"

    set_trace_func Proc.new{|event, file, line, id, binding, classname|
      printf "[%8s] %30s %30s (%s:%-2d)\n", event, id, classname, file, line if
        event          =~ event_regex and
        classname.to_s !~ class_regex
    }
    return
  end
  
  def enable_trace_for_class( event_regex = /^(call|return)/, class_regex = /IRB|Wirble|RubyLex|RubyToken/ )
    puts "Enabling method tracing with event regex #{event_regex.inspect} and class inclusio regex #{class_regex.inspect}"

    set_trace_func Proc.new{|event, file, line, id, binding, classname|
      printf "[%8s] %30s %30s (%s:%-2d)\n", event, id, classname, file, line if
        event          =~ event_regex and
        classname.to_s =~ class_regex
    }
    return
  end

  def disable_trace
    puts "Disabling method tracing"
    set_trace_func nil
  end

  def ri(*names)
    system(%{ri #{names.map { |name| name.to_s }.join(" ")}})
  end

  class Object
    #
    # Print object methods, sorted by name. (excluding methods that
    # exist in the class Object) .
    #
    def show_methods(include_parent_methods = false)
      self.methods(include_parent_methods).sort
    end
  
    def show_class_methods(include_parent_methods = false)
      self.class.methods(include_parent_methods).sort
    end
  
    # Print object constants, sorted by name.
    def show_constants
      self.class.constants.sort
    end

  end
end
