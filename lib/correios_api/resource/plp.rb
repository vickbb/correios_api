module CorreiosETC
  module Resource
    class Plp
      include ActiveData::Model

      attribute :sender, type: Object
      attribute :postages, type: Array

    end
  end
end