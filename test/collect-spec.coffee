ReturnValue = require 'nanocyte-component-return-value'
Collect = require '../src/collect'

describe 'Collect', ->
  beforeEach ->
    @sut = new Collect

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'
