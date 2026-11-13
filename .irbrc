alias q exit

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true

class Object
  def my_methods(include_inherited = false)
    ignored_methods = include_inherited ? Object.methods : self.class.superclass.instance_methods
    (self.methods - ignored_methods).sort
  end
  alias_method :m, :my_methods
end
