module ManageIQ::Providers
  class HDFS::StorageManager < ManageIQ::Providers::PhysicalInfraManager
    require 'fog/hadoop'

    def verify_credentials(_auth_type = nil, options = {})
      begin
        # As the connect will only give a handle
        # we verify the credentials via an actual operation
        connect(options).get_metrics
      rescue URI::InvalidComponentError
        raise MiqException::MiqHostError, "Host '#{hostname}' is invalid"
      rescue => err
        $log.error(err)
        raise MiqException::Error, 'Unable to verify credentials'
      end

      true
    end

    def self.verify_ssl_mode(security_protocol)
      case security_protocol
        when 'ssl-without-validation'
          OpenSSL::SSL::VERIFY_NONE
        else
          OpenSSL::SSL::VERIFY_PEER
      end
    end

    def self.entrypoint(host, port, security_protocol)
      case security_protocol
        when nil, '', 'non-ssl'
          URI::HTTP.build(:host => host, :port => port.to_i).to_s
        else
          URI::HTTPS.build(:host => host, :port => port.to_i).to_s
      end
    end

    # HDFS Client
    def self.raw_connect(host, port, username, password, security_protocol, cert_store)
      credentials = {
          :username => username,
          :password => password
      }
      options = {
          :tenant         => 'hadoop',
          :verify_ssl     => verify_ssl_mode(security_protocol),
          :ssl_cert_store => cert_store
      }
      ::Fog::Hadoop::HDFS.new(:hadoop_hdfs_api_url => entrypoint(host, port, security_protocol))
    end

    def connect(_options = {})
      @client ||= self.class.raw_connect(hostname,
                                         port,
                                         authentication_userid('default'),
                                         authentication_password('default'),
                                         default_endpoint.security_protocol,
                                         default_endpoint.ssl_cert_store)
    end

    def self.ems_type
      @ems_type ||= "hdfs".freeze
    end

    def self.description
      @description ||= "Hadoop Database File System".freeze
    end

  end
end