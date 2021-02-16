describe 'Cadastro' do
    
    it "Novo usuário" do
    auth = {:username => "inmetrics", :password => "automacao"}
       result = HTTParty.post("https://inm-test-api.herokuapp.com/empregado/cadastrar",
        body: {
                "empregadoId": 1068,
                "nome": "Rafael Carvalho",
                "sexo": "m",
                "cpf": "403.872.510-30",
                "departamentoId": 1,
                "cargo": "QA",
                "admissao": "01/03/2021",
                "salario": "4.500,00",
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