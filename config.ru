# config.ru
# Removed Heroku Plugin
require './config/environment'

begin
  fi_check_migration

  use Rack::MethodOverride

  run ApplicationController
  use RoleController
  use ArticleController
  use AgentsController
  use CompaniesController
  use ListingsController
  use SignupsController
  use LoginsController
rescue ActiveRecord::PendingMigrationError => e
  warn e
  exit 1
end

# if ActiveRecord::Migrator.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end
# run ApplicationController
# use RoleController
# use Rack::MethodOverride
# use LoginsController
# use CompaniesController
# use AgentsController
# use ListingsController
# use SignupsController
# use UsersController

  #
  #
  #
  # use Rack::MethodOverride
  #
  # run ApplicationController
  # use RoleController

