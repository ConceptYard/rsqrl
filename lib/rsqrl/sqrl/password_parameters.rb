module Sqrl
  class PasswordParameters

    # This is an immutable object, just can be set on creation
    attr_reader :N, :p, :r, :output_length

    def initialize(options={})
      raise ArgumentError.new if has_bad_parameters?(options)

      @N              = options[:N]
      @p              = options[:p]
      @r              = options[:r]
      @output_length  = 32
    end

    def to_s
      "N: #{self.N}, r: #{self.r}, p: #{self.p}"
    end

    private

    def has_bad_parameters?(options)
      return options[:N].nil? || options[:r].nil? || options[:p].nil?
    end
  end
end