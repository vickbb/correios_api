module CorreiosECT
  module Resource
    class Postage
      include ActiveData::Model

      attribute :ticket, type: String
      attribute :invoice, type: String, default: '0000000'
      attribute :service, type: Integer
      attribute :weight, type: String
      attribute :type_object, type: Integer, default: 002
      attribute :height, type: Integer, default: 0
      attribute :width, type: Integer, default: 0
      attribute :length, type: Integer, default: 0
      attribute :diameter, type: Integer, default: 0
      attribute :receiver, type: Object

    end
  end
end