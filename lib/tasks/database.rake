namespace :database do
  desc "repopulate database"
  task repopulate: ['db:seed'] do
    puts "repopulating completed"
  end

end
