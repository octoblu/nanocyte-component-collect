ReturnValue = require 'nanocyte-component-return-value'
Collect = require '../src/collect'

describe 'Collect', ->
  beforeEach ->
    @sut = new Collect

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope and null data', ->
      it 'should return the collected key nested in the config value', ->
        envelope =
          config:
            value: 5
          data: null

        expect(@sut.onEnvelope envelope).to.deep.equal [5]

    describe 'when called with an envelope and empty data', ->
      it 'should return the collected key nested in the config value', ->
        envelope =
          config:
            value: 5
          data: []

        expect(@sut.onEnvelope envelope).to.deep.equal [5]

    describe 'when called with an envelope that already contains data', ->
      it 'should return the collected key nested in the config value', ->
        envelope =
          config:
            value: 5
          data: [1]

        expect(@sut.onEnvelope envelope).to.deep.equal [1,5]

    describe 'when called with an envelope that already contains data', ->
      it 'should return the collected key nested in the config value', ->
        envelope =
          config:
            value: 3
          data: [1]

        expect(@sut.onEnvelope envelope).to.deep.equal [1,3]

    describe 'when called with an envelope that already contains data as an object', ->
      it 'should convert the object to an array', ->
        envelope =
          config:
            value: 3
          data: {}

        expect(@sut.onEnvelope envelope).to.deep.equal [3]
