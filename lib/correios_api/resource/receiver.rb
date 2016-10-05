module CorreiosETC
  module Resource
    class Receiver < Sender

      attribute :invoice, type: String
      attribute :text, type: String
    end
  end
end
