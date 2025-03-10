require 'sinatra'

get '/' do
    <<-HTML
    <form action = "/convert" method="post">
        <input type="text" name="user_input" placeholder="kirjoita jtn...">
        <button type="submit">Muunna binääriksi</button>
    </form>
    HTML
end

post '/convert' do
    input_text=params[:user_input]
    binary_text= input_text.chars.map { |char| char.ord.to_s(2).rjust(8, '0') }.join(' ')

    <<-HTML
    <p>Teksti: #{input_text}</p>
    <p>Binääri: #{binary_text}</p>
    <a href="/">Takaisin</a>
    HTML
end