require('spec_helper')

describe('creating a new custom-named tamagotchi', {:type => :feature}) do
  it('will successfully initialize a new tamagotchi') do
    visit('/')
    click_link('Get Started')
    fill_in("Name", :with => "test name")
    click_button("Go!")
    expect(page).to have_content("test name")
  end
end
