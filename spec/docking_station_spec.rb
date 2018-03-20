require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'bike is working' do
      bike = Bike.new
      subject.dock_bike(bike)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it 'raises an error if no bikes are available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

  end

  describe '#dock_bike' do
    it { is_expected.to respond_to :dock_bike }

    it 'allows a bike to be docked' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end

    it 'raises an error if there is already a bike docked' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect { subject.dock_bike(bike) }.to raise_error 'Docking station full'
    end
  end

end
