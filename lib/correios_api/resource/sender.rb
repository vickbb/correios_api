module CorreiosETC
  module Resource
    class Sender
      include ActiveData::Model

      attribute :name, type: String
      attribute :street, type: String
      attribute :number, type: String
      attribute :complement, type: String
      attribute :district, type: String
      attribute :zip_code, type: String
      attribute :city, type: String
      attribute :state, type: String
      attribute :phone, type: String
      attribute :email, type: String, default: 'BRA'

    end
  end
end
