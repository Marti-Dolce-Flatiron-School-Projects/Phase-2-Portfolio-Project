# db/seeds.rb
require_relative '../app/models/role'

Role.create([
               {role_name: "admin"},
               {role_name: "agent"},
               {role_name: "guest"}
             ])


