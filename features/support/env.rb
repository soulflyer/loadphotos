require "active_record"
ActiveRecord::Base.establish_connection(:adapter => "sqlite3",
                             :database => "/Users/iain/Code/Photos/db/test.sqlite3")

class Shoot < ActiveRecord::Base
end

class Photo < ActiveRecord::Base
end
