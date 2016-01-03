require "factory_girl"
require "faker"
require "database_cleaner"

include FactoryGirl::Syntax::Methods
FactoryGirl.find_definitions
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

create_list(:instrument, 10)