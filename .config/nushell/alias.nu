use local_env.nu *

alias ctrlc = xclip -sel clip
alias mthdd = (sudo mkdir -p /media/jc/Volume | sudo mount /dev/sda1 /media/jc/Volume)
alias nope = nautilus $env.PDIR
alias avenv = overlay use .venv/bin/activate.nu
