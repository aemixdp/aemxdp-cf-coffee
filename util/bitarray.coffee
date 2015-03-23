module.exports = class BitArray
  constructor: (length) ->
    @buffer = new Uint8Array(Math.floor(length / 8) + 1)
  get: (ix) ->
    (@buffer[Math.floor(ix / 8)] >> ix % 8) & 1
  set: (ix, val) ->
    if val == 1
      @buffer[Math.floor(ix / 8)] |= 1 << ix % 8
    else
      @buffer[Math.floor(ix / 8)] &= ~(1 << ix % 8)
