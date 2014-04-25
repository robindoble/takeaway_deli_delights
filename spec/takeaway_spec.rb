require 'takeaway'


describe Takeaway do 

	context 'creating a menu' do

		it 'first we need a Takeaway operation of some sort' do
			expect(Takeaway.new.class).to be_true
		end

		it 'should have a Menu subclass' do 
			expect(MenuItem.new("dummy_name").class).to be_true
		end

		it 'each menu item should have a name' do
			soup = MenuItem.new("Soup")			
			expect(soup.name).to eq("Soup")
		end

		it 'each menu item should have a price'do
			fish = MenuItem.new("Fish",5)
			expect(fish.price).to eq(5)
		end




	end	
end

