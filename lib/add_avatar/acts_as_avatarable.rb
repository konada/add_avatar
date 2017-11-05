module AddAvatar
  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def acts_as_avatarable
      has_one :avatar, as: :source
    end
  end
end

ActiveRecord::Base.send :include, AddAvatar
