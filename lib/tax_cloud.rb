require "tax_cloud/version"

# Top-level interface to TaxCloud
module TaxCloud
  # Call this method to modify defaults in your initializers.
  #
  # @example
  #   TaxCloud.configure do |configuration|
  #     configuration.api_id = "abcd1234"
  #   end
  #
  # @yield [Configuration] The current configuration.
  def self.configure
    yield(configuration)
  end
  
  # @return [Configuration] Current configuration.
  def self.configuration
    @@configuration ||= Configuration.new
  end
end