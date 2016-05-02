require 'json'
require 'rainbow'
require 'httparty'
require './Movie'
require 'rspec'



describe Movie do
  it 'should return a hash' do
    # Movie.new.to_hash.class.should == Hash
    expect(Movie.new.to_hash.class).to eq(Hash)
  end

  it 'should be Top Gun' do
    @tg = Movie.new.to_hash
    expect(@tg['Title']).to eq('Top Gun')
    # @tg['Title'].should == 'Top Gun'
  end

  it 'should be released in 1986' do
    @tg = Movie.new.to_hash
    # @tg['Year'].should == '1986'
    expect(@tg['Year']).to eq('1986')
  end

  it 'should be rated PG' do
    @tg = Movie.new.to_hash
    # @tg['Rated'].should == 'PG'
    expect(@tg['Rated']).to eq('PG')
  end
end
