require "spec_helper"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be true
    end

    it "returns false if some element of the Array is not empty" do
      expect(["", 1, "", Object.new, :a].all_empty?). to be false
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to be true
    end
  end

  context "#all_same?" do
    it "returns true if all elements are the same" do
      expect(["", "", ""].all_same?).to be true
    end

    it "returns false if elements are different from each other" do
      expect(["", 1, "", Object.new, :a].all_same?).to be false
    end

    it "returns true if array is empty" do
      expect([].all_same?).to be true
    end
  end

  context "#any_empty?" do
    it "returns true if one element is empty" do
      expect(["", 1, 2].any_empty?).to be true
    end

    it "returns false if none is empty" do
      expect([1, 3, "a"].any_empty?).to be false
    end
  end

  context "#none_empty?" do
    it "returns true if all elements are not empty" do
      expect([1, "a", Object.new, :a].none_empty?).to be true
    end

    it "returns false if at least one element is empty" do
      expect([1, "", Object.new, :a].none_empty?).to be false
    end
  end
end




























