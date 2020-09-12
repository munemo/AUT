feature 'User can login' do
let(:user) { FactoryBot.create(:user) }

before do
  login_as(user, scope: :user)
  visit root_path
end
end