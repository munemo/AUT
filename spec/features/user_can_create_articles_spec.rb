feature 'Vistor can write articles' do
  before do
    visit root_path
    click_on 'Write Article'
    fill_in 'article[title]', with: 'Happy holidays'
    fill_in 'article[content]', with: 'Buy your gifts now!'
    click_on 'Create Article'
  end

  describe 'Visitor can write an article' do

    it 'User should see sucess message' do
      expect(page).to have_content 'Your article was successfully created'
    end
  end
end
