use local_env.nu *

alias ctrlc = xclip -sel clip
alias nope = nautilus $env.PDIR
alias avenv = overlay use .venv/bin/activate.nu

def mthdd [] {sudo mkdir -p /media/jc/Volume; sudo mount /dev/sda1 /media/jc/Volume}
