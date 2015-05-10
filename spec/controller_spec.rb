require 'spec_helper'

describe '/' do
  it "makes a call to the github api and responds with an image url" do
    get '/'
    mock_response = {
                     "login" => "dreeve",
                     "id" => 1
                     }
    allow(HTTParty).to receive(:get).and_return(mock_response)
    expect(HTTParty.get).to return(mock_response)
  end
end