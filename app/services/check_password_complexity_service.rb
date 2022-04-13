class CheckPasswordComplexityService < ApplicationService
  attr_accessor :password, required_complexity

  def initialize(password, required_complexity = 4)
    @password = password
    @required_complexity = required_complexity
  end

  def call
    score = uppercase_letters? + digits? + extra_chars? + downcase_latters?
    score >= required_complexity
  end

  private

  def digits?
    @password.match(/\d/) ? 1 : 0
  end

  def downcase_latters?
    @password.match(/[a-z]{1}/) ? 1 : 0
  end

  def extra_chrs?
    @password.match(/[\w_]/) ? 1 : 0
  end

  def uppercase_latters?
    @password.match(/[A-Z]/) ? 1 : 0
  end
end
