# STARSHIP
eval (starship init elvish)

# ALIASES

fn cls {
    try { clear } catch { cmd /c cls }
}

fn ls {|@a|
    lsd $@a
}

fn v {|@a|
    nvim $@a
}

fn y {
    yazi
}

fn z {|@a|
    zoxide $@a
}

# fn cd {|@a|
#    zoxide $@a
# }

fn mkdir {|@a|
    try { e:mkdir $@a } catch { cmd /c mkdir $@a }
}
