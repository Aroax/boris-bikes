require 'DockingStation'

describe DockingStation do

  it { expect(:release_bike).not_to be_empty }

  it {expect(subject.release_bike).to respond_to(:working?) }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock).with(1).argument }

end
