require 'takeaway'


describe Takeaway do 

	let (:takeaway) {Takeaway.new}

	context 'creating a takeaway service' do

		it 'first we need a takeaway operation of some sort' do
			expect(takeaway.class).to be_true
		end

		it 'should have a menu with options' do 
			expect(takeaway.menu.count).to be(5)
		end

		it 'can show the menu and solicit an option' do 
			expect(takeaway.respond_to?(:show_menu)).to be_true
		end
		
		it 'user choice should be added to an order list' do
			takeaway.order_checker(:soup)
			expect(takeaway.order.count).to eq(1)
		end

		it 'user must choose desired quantity on making each choice' do 
			takeaway.order_checker(:soup)
			expect(takeaway.order[0][0].to_i).to eq(1)
		end


		# it 'one should be able to add a choice to the order' do

		# end

		# it 'should have a menu class which yields a pre set menu' do
		# 	menu=Menu.new
		# 	expect(menu.to_a.count).to eq(5)
		# end


		


	end	
end

