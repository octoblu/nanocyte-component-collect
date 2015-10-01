ReturnValue = require 'nanocyte-component-return-value'
_ = require 'lodash'

class Collect extends ReturnValue
  onEnvelope: (envelope) =>
    {config,data} = envelope
    {value} = config

    data = [] unless _.isArray data
    data.push value

    return data

module.exports = Collect
