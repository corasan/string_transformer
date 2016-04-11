require "string_transformer/version"

module StringTransformer
  @@key = nil
  @@encrypt = ""
  @@original_str = ""

  # The method encryption_arr returns an array of characters that will replace each letter in a given string
  def encryption_arr
    encryption_string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
    encryption_string.split("")
  end

  # The method encrypt replaces every character in a given string with the first 4 elements in encryption_arr
  def encrypt
    @@original_str = self
    @@encrypt = @@original_str.split("").map { |letter| letter.replace(encryption_arr.shuffle.first(5).join) }.join + "_$"
    @@key = encryption_key(@@encrypt, @@original_str)
    @@encrypt
  end

  # If @@key includes a key that is the same as the given string(encrypted string)
  # then it will decrypt the string(return original string that was save as the value)
  def decrypt
    decrypt_str = self
    if @@key.keys.include?(decrypt_str)
      @@key[@@encrypt]
    else
      "Error! Can't decrypt. The string is not valid."
    end
  end

  private
  # Hash with encrypted string as key and original string as value
  def encryption_key(key, original)
    {key => original}
  end
end

class String
  include StringTransformer
end
