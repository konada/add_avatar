require 'spec_helper'
require 'support_helper'

describe ActiveRecord do
  describe 'classes with acts_as_avatarable' do
    it 'do have avatar' do
      reflection = User.reflect_on_association(:avatar)
      reflection.macro.should eq :has_one
    end
  end

  describe 'classes without acts_as_avatarable' do
    it 'do not have avatar' do
      reflection = Pet.reflect_on_association(:avatar)
      expect(reflection).to be nil
    end
  end
end
