require_relative 'gymmath'

describe GymMath, "#45s" do
  it "returns 45 for 135" do
    math = GymMath.new
    plates = math.calc_plates_needed(135)
    plates[0].should == 45
  end

  it "returns 45 and 5 for 135 with 35 bar weight" do
    math = GymMath.new
    plates = math.calc_plates_needed(135, 35)
    plates[0].should == 45
    plates[1].should == 5
  end

  
  it "returns 2 45 for 225" do
    math = GymMath.new
    plates = math.calc_plates_needed(225)
    plates[0].should == 45
    plates[1].should == 45
  end

  it "should return the empty bar" do
    math = GymMath.new
    plates = math.calc_plates_needed(0)
    plates.should == []
  end

end