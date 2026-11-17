require 'logger'

logger = Logger.new(STDOUT)

logger.level = Logger::DEBUG
logger.formatter=lambda do|severity, datetime, programe, meg|
  "#{datetime}:#{meg}\n"
end
logger.warn "a warning"
logger.info "an info"
