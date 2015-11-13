require "string_transformer/version"  # ~> LoadError: cannot load such file -- string_transformer/version

module StringTransformer
  class String

    def encrypt
      @str = self
      str.split("").map { |letter| letter.replace(@encryption_arr.shuffle.first(3).join) }.join
    end

    def encryption_key
      {encrypt => @str}
    end

    def decrypt
      if self == encrypt
        @str
      else
        "Can't find original string"
      end
    end

    private

    def encryption_arr
      encryption_string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*+><?1234567890"
      @encryption_arr = encryption_string.split("")
    end
  end
end
