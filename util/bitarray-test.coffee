BitArray = require "./bitarray.js"
assert = require "assert"

describe "BitArray", () ->
  it "should be constructible with length", () ->
    assert.ok(new BitArray(8))
  describe "#get()", () ->
    it "should return 0 for untouched cells", () ->
      bits = new BitArray(12)
      for i in [0..11]
        assert.strictEqual(0, bits.get(i))
    it "should return new value after #set(..)", () ->
      bits = new BitArray(2)
      assert.strictEqual(0, bits.get(0))
      bits.set(0, 1)
      assert.strictEqual(1, bits.get(0))
  describe "#set(..)", () ->
    it "should not modify values at other indexes", () ->
      bits = new BitArray(22)
      bits.set(12, 1)
      for i in [0..21]
        if i != 12
          assert.strictEqual(0, bits.get(i))
