require 'menu'
require 'order'

describe Order do

  it 'can show a order' do
    order = Order.new
    expect{ order.view_order }.not_to raise_error
  end

end
