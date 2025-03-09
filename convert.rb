require 'tk'

root = TkRoot.new {title "Binary Keyboard"}

log_text = TkText.new(root) do
    width 50
    height 10
    pack
end

Tk.bind(root, "KeyPress") do |event|
    key = event.char
    unless key.empty?
        ascii = key.ord
        binary = ascii.to_s(2).rjust(8, '0')
        log_text.insert("end", "Näppäin: #{key.inspect} -> binääri : #{binary}\n")
    end
end

Tk.mainloop