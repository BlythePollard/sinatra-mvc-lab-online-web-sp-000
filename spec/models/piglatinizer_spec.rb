describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.pig_latinize_word("pork")).to eq("orkpay")
    expect(words.pig_latinize_word("I")).to eq("Iway")
    expect(words.pig_latinize_word("hello")).to eq("ellohay")
    expect(words.pig_latinize_word("please")).to eq("easeplay")
    expect(words.pig_latinize_word("tomorrow")).to eq("omorrowtay")
    expect(words.pig_latinize_word("until")).to eq("untilway")
    expect(words.pig_latinize_word("this")).to eq("isthay")
    expect(words.pig_latinize_word("Enumeration")).to eq("Enumerationway")
    expect(words.pig_latinize_word("spray")).to eq("ayspray")
    expect(words.pig_latinize_word("prays")).to eq("ayspray")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.pig_latinize_string("i love programming")).to eq("iway ovelay ogrammingpray")
  end

end
