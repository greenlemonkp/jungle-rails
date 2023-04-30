require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it 'should create valid user' do
      user = User.new(
        name: "Harry",
        email: "harry@potter.com",
        password: "12345",
        password_confirmation: "12345"
      )
      expect(user).to be_valid
    end

    it 'should have password and password confirmation' do
      user = User.create(
        name: "Harry",
        email: "harry@potter.com",
        password: "123",
        password_confirmation: "221"
      )
      expect(user).to_not be_valid
   end

    it 'should not save without unique email' do
      user = User.create(
        name: "Harry",
        email: "harry@potter.com",
        password: "123",
        password_confirmation: "123"
      )
      user2 = User.create(
        name: "Harry",
        email: "HARRY@potter.com",
        password_digest: "123"
      )
      expect(user2).to_not be_valid
end
end
end
