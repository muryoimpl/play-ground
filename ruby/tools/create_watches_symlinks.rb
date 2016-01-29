require 'fileutils'
require 'pathname'

REPOS = %w[
  rails/rails
  rspec/rspec
  rspec/rspec-rails
  lassebunk/gretel
  jnicklas/capybara
  thoughtbot/factory_girl
  thoughtbot/factory_girl_rails
  cgriego/active_attr
  rsim/oracle-enhanced
  kubo/ruby-oci8
].freeze

OLD = '~/.ghq/github.com/'
NEW = '~/watches/'

REPOS.each do |repository|
  FileUtils.symlink(
    Pathname(OLD).join(repository).expand_path,
    Pathname(NEW).expand_path
  )
end

