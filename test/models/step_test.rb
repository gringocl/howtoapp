require "test_helper"

describe Step do
  before do
    @step = Step.new
  end

  it "must be valid" do
    @step.valid?.must_equal true
  end
end
