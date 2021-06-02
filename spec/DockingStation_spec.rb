require 'DockingStation'

describe DockingStation do

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # release the bike we docked
      expect(subject.release_bike).to eq bike
    end

    it 'raises and error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

  end

  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end


  #
  # it { expect(:release_bike).not_to be_empty }
  #
  # it {expect(subject.release_bike).to respond_to(:working?) }
  #
  # it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end
  #
  # it { is_expected.to respond_to(:release_bike) }
  #
  # it 'docks something' do
  #   bike = Bike.new
  #   # Returning docked bike
  #   expect(subject.dock(bike)).to eq bike
  # end
  #
  # it { is_expected.to respond_to(:dock).with(1).argument }
  #
  # it { is_expected.to respond_to(:bike) }
end
