require 'takeaway'


describe Takeaway do 

	context 'creating a menu' do

		it 'first we need a Takeaway operation of some sort' do
			expect(Takeaway.new.class).to be_true
		end

			it 'should initialize with a Menu with 5 options' do 
				expect(Takeaway.new.menu.count).to be(5)
			end

		
		# it 'should have a menu class which yields a pre set menu' do
		# 	menu=Menu.new
		# 	expect(menu.to_a.count).to eq(5)
		# end


		


	end	
end

