require 'docking_station'
require 'bike'

describe DockingStation do
  #it { is_expected.to respond_to :release_bike }

<<<<<<< HEAD
=======
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

>>>>>>> 2031ecdd6d6e840131da700851f56bf4d065bd7d
  #it 'releases working bikes' do
  #  bike = subject.release_bike
  #  expect(bike).to be_working
  #end

<<<<<<< HEAD
  it "Returns true from working? method" do
    s1 = DockingStation.new

    expect(s1.release_bike.working?).to eq(true)
=======
  #it { is_expected.to respond_to(:dock).with(1).argument }

#  it { is_expected.to respond_to(:bike) }

#  it 'docks something' do
  #  bike = Bike.new
  #  expect(subject.dock(bike)).to eq bike
#  end

  #it 'returns docked bikes' do
#    bike = Bike.new
  #  subject.dock(bike)
  #  expect(subject.bike).to eq bike
#  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock Bike.new}
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    end
>>>>>>> 2031ecdd6d6e840131da700851f56bf4d065bd7d
  end

  it "call the dock method for a bike released" do
    bike = Bike.new
    expect(DockingStation.new.dock(bike)).to eq "Bike Docked"
  end

end
