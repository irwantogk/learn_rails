class AddDummyRecordsToDemoTable < ActiveRecord::Migration[7.1]
  def up
    10.times do |i|
      puts "Creating demo #{i + 1}"

      Demo.create(
        name: "Name #{i + 1}",
        description: "Demo description of #{i + 1}"
      )
    end
  end

  def down
    10.times do |i|
      puts "Deleting demo #{i + 1}"

      Demo.find_by(name: "Name #{i + 1}").destroy
    end
  end
end
