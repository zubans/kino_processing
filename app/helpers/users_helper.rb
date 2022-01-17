# frozen_string_literal: true
module UsersHelper
  def generate_password(salt, password)
    Digest::SHA1.hexdigest("Adding #{salt} to #{password}")
  end
end
