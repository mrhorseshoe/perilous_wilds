require 'roda_helper'

RSpec.describe Discovery::Structure::Enigmatic do
  it_behaves_like 'a random element'

  it 'has Age detail' do
    expect(subject.details).to include('Age')
    expect(subject.details['Age']).to be_a(Details::Age)
  end

  it 'has Size detail' do
    expect(subject.details).to include('Size')
    expect(subject.details['Size']).to be_a(Details::Size)
  end

  it 'has Visibility detail' do
    expect(subject.details).to include('Visibility')
    expect(subject.details['Visibility']).to be_a(Details::Visibility)
  end
end
