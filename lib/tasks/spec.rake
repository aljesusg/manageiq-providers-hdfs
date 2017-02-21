if defined?(RSpec) && defined?(RSpec::Core::RakeTask)
  namespace :test do
    namespace :providers do
      namespace :consumption do
        desc "Setup environment for hdfs specs"
        task :setup => [:initialize, :verify_no_db_access_loading_rails_environment, :setup_db]
      end

      desc "Run all hdfs specs"
      RSpec::Core::RakeTask.new(:consumption => [:initialize, "evm:compile_sti_loader"]) do |t|
        spec_dir = File.expand_path("../../spec", __dir__)
        EvmTestHelper.init_rspec_task(t, ['--require', File.join(spec_dir, 'spec_helper')])
        t.pattern = FileList[spec_dir + '/**/*_spec.rb'].exclude(spec_dir + '/manageiq/**/*_spec.rb')
      end
    end
  end
end
