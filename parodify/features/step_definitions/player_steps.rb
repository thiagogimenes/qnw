Dado("Login com {string} e {string}") do |email, password|
  visit "http://parodify.qaninja.com.br/"
  click_on "Login"

  find("#user_email").set email
  find("#user_password").set password
  click_on "Log in"
end
#corrigir aqui
Dado("que eu gosto muito de {string}") do |cat|
  find("a[href='search/new/']").click
  #procurar elemento pela imagem. usar cat.downcase para pegar minusculo
  find("img[src$='${cat.downcase}.png']").click

  sleep 10 #temporario
end

Quando("todo a seguinte canção:") do |table|
  #transformar table do ruby em objeto.
  parodi = table.rows_hash
end

Então("essa paródia deve ficar em modo de reprodução") do
  pending # Write code here that turns the phrase above into concrete actions
end
