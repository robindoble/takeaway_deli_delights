require 'takeaway'


describe T do 

	let (:takeaway) {T.new}

	before(:each) do
		# stub(:gets).and_return(:soup)
		takeaway.stub(:puts)
	end

	context 'creating a takeaway service with a user menu' do

		it 'first we need a takeaway operation of some sort' do
			expect(takeaway.class).to be_true
		end

		it 'should have a menu with options' do 
			expect(takeaway.menu.count).to be(5)
		end

		it 'can show the options menu and solicit an option' do 
			expect(takeaway.respond_to?(:options_menu)).to be_true
			expect(takeaway.respond_to?(:add_order)).to be_true
		end
		
		it 'user choice and quantity should be added to an order list' do
			takeaway.stub(:gets).and_return("soup\n","1\n","4\n")
			takeaway.add_order
			expect(takeaway.order.count).to eq(1)
		end

		it 'multiple user choices can be added to an order' do
			takeaway.stub(:gets).and_return("soup\n","1\n","4\n")
			takeaway.add_order
			takeaway.stub(:gets).and_return("fish\n","2\n","4\n")
			takeaway.add_order
			expect(takeaway.order.count).to eq(2)
		end

	end

	context 'verifying the order total and processing the order' do

		it 'should allow a user to complete order by first verifying the total' do
			takeaway.stub(:gets).and_return("soup\n","1\n","4\n")
			takeaway.add_order
			takeaway.stub(:gets).and_return("fish\n","2\n","4\n")
			takeaway.add_order
			takeaway.stub(:gets).and_return("12\n")
			expect(takeaway.check_total).to be(true)
		end

		it 'should allow a user to complete order by first verifying the total' do
			takeaway.stub(:gets).and_return("soup\n","1\n","4\n")
			takeaway.add_order
			takeaway.stub(:gets).and_return("12\n")
			expect{takeaway.complete_order}.to raise_error
		end




		# it 'should send the user a text message' do
		# 	takeaway.stub(:gets).and_return("soup\n","1\n","4\n")
		# 	takeaway.add_order
		# 	takeaway.stub(:gets).and_return("2\n")
		# 	expect(takeaway.complete_order).to be_true
		# end

		# expect(takeaway).to recieve(complete_order)
		# # 	takeaway.stub(:gets).and_return("soup\n","1\n","4\n")
		# # 	takeaway.add_order
		# # 	takeaway.stub(:gets).and_return("12\n")
		# # 	expect{takeaway.complete_order}.to raise_error
		# end

	end	

end

