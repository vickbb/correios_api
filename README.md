
### Instalanado a gem
```
gem "correios_api", :git => "git@github.com:caverna-labs/correios_api.git"
```

### Configurando dados de ambiente
```
CorreiosETC.configure do |config|
  config.cnpj=ENV['ECT_CNPJ']
  config.user=ENV['ECT_USER']
  config.password = ENV['ECT_PASSWORD']
  config.administrative_code = ENV['ECT_ADMINISTRATIVE_CODE']
  config.contract = ENV['ECT_CONTRACT']
  config.code_service = ENV['ECT_CODE_SERVICE']
  config.card = ENV['ECT_CARD']
  config.environment = ENV['ECT_ENVIRONMENT'].to_sym
end

```

### Instanciando api

```
@api = CorreiosETC::Api.new()

```