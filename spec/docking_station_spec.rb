require 'docking_station'

describe DockingStation do

    describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end
      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end

    describe '#dock' do
      it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
      end
      it 'raises an error when full' do
        subject.dock(Bike.new)
        expect { subject.dock Bike.new }.to raise_error 'Docking station full'
      end
    end
end
