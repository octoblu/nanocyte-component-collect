ReturnValue = require 'nanocyte-component-return-value'

class Collect extends ReturnValue
  onEnvelope: (envelope) =>
    {config,data} = envelope
    {value} = config

    data ?= []
    data.push value

    return data

module.exports = Collect
