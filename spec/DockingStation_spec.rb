require 'DockingStation'

describe DockingStation do

  it { expect(:release_bike).not_to be_empty }

  it {expect(:release_bike).to respond_to(:working?) }

  it {expect(:working?).to be true}

  it { is_expected.to respond_to(:release_bike) }

end
