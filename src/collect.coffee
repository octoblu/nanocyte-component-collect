ReturnValue = require 'nanocyte-component-return-value'

class Collect extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = Collect
