
require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  describe '#release_bike' do
    it 'releases working bike' do
      bike = double(:bike, broken?: false)
      subject.dock bike
      expect(subject.release_bike).to be bike
    end
    it 'raises an error when no bikes available' do
      expect{ subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'returns an error when full' do
      subject.capacity.times { subject.dock  Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end

    it 'stores broken and not broken bikes' do
      docking_station = DockingStation.new
      bike = Bike.new
      bike.report_broken
      expect{docking_station.dock(bike).to include bike}
    end

  end


  it 'docks something' do
    bike = Bike.new
    array = []
    array.push(bike)
    expect(subject.dock (bike)).to eq array
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new}
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    end
  end

it 'does not release broken bike' do
  docking_station = DockingStation.new
  bike = double (:bike)
  allow(bike).to receive(:broken?).and_return(true)
  subject.dock bike
  expect{docking_station.release_bike}.to raise_error 'No bikes available'
end


end
