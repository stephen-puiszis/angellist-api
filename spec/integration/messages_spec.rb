require 'spec_helper'

describe AngellistApi::Client::Messages do
  use_vcr_cassette 'messages'

  let(:client) { AngellistApi::Client.new }

  it 'gets all messages for a user' do
    messages = client.get_messages
    messages.first.should have_key :thread_id
  end
end

