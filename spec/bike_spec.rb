require "bike"
describe Bike do
    it { is_expected.to respond_to :working?}

    it 'reports bike as broken' do
      subject.report_boken
      expect(subject.broken?).to eq true
    end
end
