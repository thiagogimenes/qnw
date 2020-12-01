Dado("que acesso a página de Login") do
  goto_login
end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, password|
  login_with(email, password)
end

Então("devo ver a mensagem de erro: {string}") do |expect_message|
  #message = find(".message .message-body") encapsulado a mensagem no arquivo actions
  expect(login_alert).to eql expect_message
end
