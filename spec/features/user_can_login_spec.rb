feature '' do 
let(:user) { FactoryBot.create(:user) }
before do
  login_as(user, scope: :user)
  visit root_path
end

    it 'User can login' do
      expect(page).to have_content 'Welcome to your page'
  end
end
