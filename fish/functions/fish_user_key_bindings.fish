function fish_user_key_bindings
  fish_vi_key_bindings

  bind --erase \cf
  bind -M insert \cf end-of-line
end
