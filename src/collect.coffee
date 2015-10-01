ReturnValue = require 'nanocyte-component-return-value'
_ = require 'lodash'

class Collect extends ReturnValue
  onEnvelope: (envelope) =>
    {config,data,message} = envelope
    {value} = config

    return [] if message?[config.clearKey] == true
    data = [] unless _.isArray data
    data.push value

    return data

module.exports = Collect
