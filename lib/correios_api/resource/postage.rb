module CorreiosETC
  module Resource
    class Postage
      include ActiveData::Model

      attribute :ticket, type: String
      attribute :service, type: String
      attribute :weight, type: String
      attribute :type_object, type: Integer
      attribute :height, type: Integer, default: 0
      attribute :width, type: Integer, default: 0
      attribute :length, type: Integer, default: 0
      attribute :diameter, type: Integer, default: 0
      attribute :receiver, type: Object

    end
  end
end