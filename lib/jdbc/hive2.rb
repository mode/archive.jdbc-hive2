warn 'jdbc-hive2 is only for use with JRuby' if (JRUBY_VERSION.nil? rescue true)

module Jdbc
  module Hive2
    DRIVER_VERSION = '0.11.0'
    VERSION = DRIVER_VERSION + '.1'

    def self.driver_jar
      %W(
        driver/libfb303-0.9.0.jar
        driver/slf4j-api-1.6.1.jar
        driver/hadoop-core-1.0.3.jar
        driver/commons-logging-1.0.4.jar
        driver/hive-exec-0.11.0.jar
        driver/hive-jdbc-0.11.0.jar
        driver/hive-metastore-0.11.0.jar
        driver/hive-service-0.11.0.jar
      )
    end

    def self.load_driver(method = :load)
      # case version
      # when 11
      # when 12
      # when :cdh5
      # else # 11
      # end
      driver_jar.each do |jar|
        send method, jar
      end
    end

    def self.driver_name
      'org.apache.hive.jdbc.HiveDriver'
    end

    if defined?(JRUBY_VERSION) && # enable backwards-compat behavior
      (Java::JavaLang::Boolean.get_boolean('jdbc.driver.autoload'))
      warn "autoloading jdbc driver on require 'jdbc/hive2'" if $VERBOSE
      load_driver :require
    end
  end
end
