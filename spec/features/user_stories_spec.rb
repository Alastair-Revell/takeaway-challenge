describe 'user_stories' do
  # As a customer
  # So that I can check if I want to order something
  # I would like to see a list of dishes with prices

  it 'so that I can order, show list of dishes and their prices' do
    menu = Menu.new
    menu.view_menu
  end

  # As a customer
  # So that I can order the meal I want
  # I would like to be able to select some number of several available dishes

  it 'so that I can order, be able to select some dishes' do
    menu = Menu.new
    order1 = Order.new
    menu.select([[2,1],[4,2],[8,1],[9,1]], order1)
  end

  # As a customer
  # So that I can verify that my order is correct
  # I would like to check that the total I have been given matches the sum of the various dishes in my order


end
