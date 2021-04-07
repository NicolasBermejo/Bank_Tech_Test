# frozen_string_literal: true

require './lib/date.rb'
describe Date do
  it 'gives the current date' do
    allow(Time).to receive(:now)
    allow(Time.now).to receive(:strftime).and_return(@time_now)
    expect(subject.current_date).to eq(@time_now)
  end
end
