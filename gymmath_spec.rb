require_relative 'gymmath'

describe GymMath, "#45s" do
  it "returns 45 for 135" do
    math = GymMath.new
    plates = math.calc_plates_needed(135)
    plates[0].should == 45
  end
  
  it "returns 2 45 for 225" do
    math = GymMath.new
    plates = math.calc_plates_needed(225)
    plates[0].should == 45
    plates[1].should == 45
  end

  it "returns one of each" do
    math = GymMath.new
    plates = math.calc_plates_needed(290)
    plates[0].should == 45
    plates[1].should == 35
    plates[2].should == 25
    plates[3].should == 10
    plates[4].should == 5
    plates[5].should == 2.5
  end

end