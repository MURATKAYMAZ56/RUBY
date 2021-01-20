class Logger 
  def log(prefix, msg)
    puts "#{prefix}: #{msg}"
  end
end 

module Log
  APP_PREFIX = "LIBRA"  # Modules can contain constants
  API_KEY = "123456"
  
  @logger = Logger.new  # It's possible to use module-level variables
    
  # Module-level methods have to be prefixed with `self.`
  def self.error(msg)
    @logger.log("[#{APP_PREFIX}] ERROR", msg)
  end 
  
  def self.info(msg)
    @logger.log("[#{APP_PREFIX}] INFO", msg)
  end 
  
  def self.debug
  end
  
  private_class_method :debug  # Module methods can be made private 
  private_constant :API_KEY    # Constants can be made private
end


Log.error("This is an error")
Log.info("This is an info message")
p Log::APP_PREFIX  # Constants are public by default
