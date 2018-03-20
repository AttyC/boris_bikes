require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
    # it { is_expected.to eq bike }

    it 'returns a working bike' do
      bike = subject.release_bike
      expect(bike).to be_working
    end
  end
end
