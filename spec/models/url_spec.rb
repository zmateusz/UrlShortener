require 'rails_helper'

RSpec.describe Url, type: :model do
  it 'abd' do
    class Url
      def generate_short
        'a'
      end
    end

    Url.create(original: 'http://google.pl')
    expect {
      Url.create(original: 'http://google.pl')
    }. to raise_error ShortGenerateError

    expect(Url.all.size).to eq 1
  end
end
