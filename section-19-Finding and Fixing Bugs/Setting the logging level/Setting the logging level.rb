require 'logger'

logger = Logger.new(STDOUT)

logger.level = Logger::UNKNOWN

logger.debug("This is a debug message")
logger.unknown("Something unknown")
logger.error("An error occurred")
logger.warn("This is a warning")

logger.level = Logger::INFO

logger.debug("This is a debug message")
logger.unknown("Something unknown")
logger.error("An error occurred")
logger.warn("This is a warning")
