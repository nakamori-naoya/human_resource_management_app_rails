module Identifier
  extend ActiveSupport::Concern

  included do
    before_validation :generate_identifier, on: :create
  end

  MODELS_WITH_SUFFIX = ['TransferBook'].freeze

  private

  def generate_identifier
    loop do
      self.identifier = "#{SecureRandom.uuid}#{suffix}"
      break unless self.class.exists?(identifier: identifier)
    end
  end

  def suffix
    @suffix ||= MODELS_WITH_SUFFIX.include?(self.class.name) ? "-#{self.class.name.gsub(/[a-z]/, '').downcase}" : ''
  end
end
