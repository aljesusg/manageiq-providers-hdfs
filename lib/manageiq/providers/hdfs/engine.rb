module ManageIQ
  module Providers
    module Hdfs
      class Engine < ::Rails::Engine
        isolate_namespace ManageIQ::Providers::Hdfs
      end
    end
  end
end
