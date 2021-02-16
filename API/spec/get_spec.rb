describe 'Listar usuários' do
    
    it "Listar todos os usuários" do
    auth = {:username => "inmetrics", :password => "automacao"}
       result = HTTParty.get("https://inm-test-api.herokuapp.com/empregado/list_all",
        :basic_auth => auth
       )
       expect(result.response.code).to eql "200"
    end

    it "Listar um usuário cadastrado" do
        auth = {:username => "inmetrics", :password => "automacao"}
       result = HTTParty.get("https://inm-test-api.herokuapp.com/empregado/list/1072",
        :basic_auth => auth
       )

       puts "A nova contratação da InMetrics é #{result["nome"]}"
       expect(result.response.code).to eql "202"
    end

end