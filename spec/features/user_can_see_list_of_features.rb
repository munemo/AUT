feature 'List articles on index page' do
  context 'with articles on db' do
    before do 
      create(:article, title: 'A breaking news item')
      create(:article, title: 'Learn Rails 5')
      
      visit root_path
    end


it 'displays first article title' do
expect(page).to have_content 'A breaking news item'  
end

it 'displays second article' do
expect(page).to have_content 'Some really breaking action'

end

end
end