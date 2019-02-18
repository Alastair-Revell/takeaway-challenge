require 'menu'
require 'order'

describe Menu do

  it 'can respond to view to show list of dishes and prices' do
    expect(subject).to respond_to(:view_menu)
  end

  it 'can select a list of items and quatites and see their total' do
    menu = Menu.new
    expect(subject).to respond_to(:select).with(2).arguments
  end

end
