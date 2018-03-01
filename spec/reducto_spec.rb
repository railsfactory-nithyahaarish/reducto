RSpec.describe Reducto do
  it "has a version number" do
    expect(Reducto::VERSION).not_to be nil
  end

  it "returns sum when minus is not in string" do
    expect(Reducto.reduceString('*9jjg81+%$@@!op')).to eq(18)
    expect(Reducto.reduceString('*0082236+;.,<>')).to eq(21)
  end

  it "throws exception when negative" do
  	expect (Reducto.reduceString('*008223-6+;.,')).to raise_error("Negative number not allowed")
  	expect { raise "oops" }.to raise_error("oops")
  end
end
