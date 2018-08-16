module TitleValidations
  extend ActiveSupport::Concern

  included do
    validates :title, presence: true, length: {maximum: 100}

    before_validation :remove_extra_spaces

    def remove_extra_spaces
      self.title = title.squish if title.present?
    end
  end
end