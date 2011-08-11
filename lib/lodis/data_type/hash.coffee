class Lodis::DataType::Hash extends Lodis::DataType::Base
  type: 1

  constructor: (@values = {}) ->

  packer: (values) ->
    this.toJSON(values)

  unpack: ->
    super
    this.set this.fromJSON this.values
    this

  set: (hash) -> this.values = hash

  add: (key, value) ->
    this.values[key] = value

  remove: (key) ->
    delete this.values[key]

  get: (key) ->
    this.values[key]
