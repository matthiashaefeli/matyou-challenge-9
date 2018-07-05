require './src/challenge.rb'

describe 'test' do
  it 'returns a given string' do
    expect(test('Hello World')).to eq 'Hello World'
  end
end

describe 'who is next' do
  it 'will return the name of a man who will drink the n-th cola' do
    expect(who_is_next(%w[Sheldon Leonard Penny Rajesh Howard], 1)).to eq 'Sheldon'
  end

  it 'will return the name of a man who will drink the n-th cola' do
    expect(who_is_next(%w[Sheldon Leonard Penny Rajesh Howard], 14)).to eq 'Howard'
  end

  it 'will return the name of a man who will drink the n-th cola' do
    expect(who_is_next(%w[Sheldon Leonard Penny Rajesh Howard], 52)).to eq 'Penny'
  end
end

describe "dir reduc" do 
	it "removes the doble directions (if north then south you are on the same position)" do 
		expect(dir_reduc(['NORTH', 'SOUTH', 'SOUTH', 'EAST', 'WEST', 'NORTH', 'WEST'])).to eq ["WEST"]
	end

	it "removes the doble directions (if north then south you are on the same position)" do 
		expect(dir_reduc(['NORTH', 'WEST', 'SOUTH', 'EAST'])).to eq ['NORTH', 'WEST', 'SOUTH', 'EAST']
	end

	it "removes the doble directions (if north then south you are on the same position)" do 
		expect(dir_reduc(['NORTH', 'SOUTH', 'EAST', 'WEST', 'EAST', 'WEST'])).to eq []
	end
end

describe "array diff" do 
	it "returns first array without value from second" do
		expect(array_diff([1,2,3],[2])).to eq [1,3]
	end

	it "returns first array without value from second" do
		expect(array_diff([1,2,2,2,2,2],[2])).to eq [1]
  end
  
  it "returns first array without value from second" do
		expect(array_diff([1,2,2,2,2,2,3,4,5,6,7,8,9,10],[2, 3, 6])).to eq [1,4,5,7,8,9,10]
	end
end

describe "are you playing banjo" do 
	it "If your name starts with the letter 'R' or lower case 'r', you are playing banjo!" do
		expect(are_you_playing_banjo("Martin")).to eq "Martin does not play banjo"
	end

	it "If your name starts with the letter 'R' or lower case 'r', you are playing banjo!" do
		expect(are_you_playing_banjo("Rikke")).to eq "Rikke plays banjo"
  end
  
  it "If your name starts with the letter 'R' or lower case 'r', you are playing banjo!" do
		expect(are_you_playing_banjo("rocky")).to eq "rocky plays banjo"
	end
end

describe "make negative" do
	it "makes a given number negative" do
		expect(make_negative(12)).to eq -12
	end

	it "makes a given number negative" do
		expect(make_negative(-12)).to eq -12
	end
end

describe "to camel case" do
	it "converts dash/underscore delimited words into camel casing" do
		expect(to_camel_case("the-stealth-warrior")).to eq "The Stealth Warrior"
  end
  
  it "converts dash/underscore delimited words into camel casing" do
		expect(to_camel_case("the_easy-solution")).to eq "The Easy Solution"
	end
end

describe "palindrome_chain_length" do
	it "takes a positive number and returns the number of special steps needed to obtain a palindrome (if 87 is not 78 next step is 87 + 78 and then check this number again)" do
		expect(palindrome_chain_length(87)).to eq 4
  end
  
  it "takes a positive number and returns the number of special steps needed to obtain a palindrome" do
		expect(palindrome_chain_length(12)).to eq 1
  end
  
  it "takes a positive number and returns the number of special steps needed to obtain a palindrome" do
		expect(palindrome_chain_length(349128)).to eq 2
	end
end

describe "xo" do
	it "returns true if the string has the same amount of 'x's and 'o's" do
		expect(xo("xo")).to eq true
	end

	it "returns true if the string has the same amount of 'x's and 'o's" do
		expect(xo("xoo")).to eq false
	end

	it "returns true if the string has the same amount of 'x's and 'o's" do
		expect(xo("xxOo")).to eq true
	end
end

describe "double_char" do 
	it "returns a string in which each character (case-sensitive) is repeated once" do 
		expect(double_char("String")).to eq "SSttrriinngg"
	end

	it "returns a string in which each character (case-sensitive) is repeated once" do 
		expect(double_char("123456")).to eq "112233445566"
	end

	it "returns a string in which each character (case-sensitive) is repeated once" do 
		expect(double_char("%^&*(")).to eq "%%^^&&**(("
	end
end

describe "maps" do 
	it "return the array with each value doubled" do 
		expect(maps([1, 2, 3])).to eq [2, 4, 6]
	end

	it "return the array with each value doubled" do 
		expect(maps([4, 1, 1, 1, 4])).to eq [8, 2, 2, 2, 8]
	end
end

describe "validate" do 
	it "returns true if the password is valid(6 chars,lowercase,upcase,number)" do 
		expect(validate("djI38D55")).to eq true
	end

	it "returns false if the password is not valid(6 chars,lowercase,upcase,number)" do 
		expect(validate("a2.d412")).to eq false
	end

	it "returns true if the password is valid(6 chars,lowercase,upcase,number)" do 
		expect(validate("Password123")).to eq true
	end
end
