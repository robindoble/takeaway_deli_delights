require 'takeaway'


describe Takeaway do 

	context 'creating a menu' do

		it 'first we need a Takeaway operation of some sort' do
			expect(Takeaway.new.class).to be_true
		end

		it 'should have Starters, Mains and Desserts on the menu' do 
			expect(Starter.new.class).to be_true
			expect(Main.new.class).to be_true
			expect(Dessert.new.class).to be_true
		end

	end



end

