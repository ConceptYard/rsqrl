module Sqrl
  class Identity

    # Immutable parameters - only identity_name is optional
    attr_reader :identity_name        # optional
    attr_reader :master_identity_keys # 256-bits
    attr_reader :password_verify      # 128-bits
    attr_reader :password_salt        # 64-bits
    attr_reader :password_parameters  # PasswordParameters object

    def initialize(options)
      raise ArgumentError if has_bad_parameters?(options)

      @identity_name = options[:identity_name]
      @master_identity_keys = options[:master_identity_keys]
      @password_verify = options[:password_verify]
      @password_salt = options[:password_salt]
      @password_parameters = options[:password_parameters]
    end

    def valid?
      validate(master_identity_keys, 32)
      validate(password_verify, 16)
      validate(password_salt, 8)
    end

    # pack the exported identity into the agreed upon export format, the
    # current proposal is:
    #     8-bit signature algorithm version
    #     256-bit encrypted master key
    #     8-bit password algorithm version
    #     64-bit per-password nonce
    #     64-bit per-password verifier
    #     16-bit computation burden spec (10 bit mantissa + 6 bit exp)
    #
    # in this implementation, "computation burden" is replaced with the following 4-byte value:
    #     8-bit SCrypt base-2 exponent of N parameter
    #     8-bit SCrypt r parameter
    #     16-bit SCrypt p parameter
    def create_export_package

    end

    def to_s

    end

    private

    def has_bad_parameters?(options)
      options[:master_identity_keys].nil? || options[:password_verify].nil? || options[:password_salt].nil? || options[:password_parameters].nil?
    end

    def validate(value, number_of_bytes)
      value.bytesize = number_of_bytes
    end

  end
end