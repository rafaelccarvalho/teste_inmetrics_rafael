describe 'Alterar usuário' do
    
    it "Alterar um usuário cadastrado" do
        auth = {:username => "inmetrics", :password => "automacao"}
        result = HTTParty.put("https://inm-test-api.herokuapp.com/empregado/alterar/1072",
         body: {
            "empregadoId": 1068,
            "nome": "Rafael Conceição  de Carvalho",
            "sexo": "m",
            "cpf": "403.872.510-30",
            "departamentoId": 1,
            "cargo": "QA Pleno",
            "admissao": "01/03/2021",
            "salario": "5.500,00",
            "comissao": "0,00",
            "tipoContratacao": "clt"}.to_json,
         headers:  {
             "Content-Type" => "application/json"
         },
         :basic_auth => auth
        )
        expect(result.response.code).to eql "202"
    end

end