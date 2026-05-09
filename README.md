# scripts
My collection of personal housekeeping scripts. Although this is obviously tailored to my specific workflows, system specifications and software ecosystem, I decided to make this public so i can easily access it and also as a reference for others looking to automate their own maintenance routine.

## Installation
```bash
git clone git@github.com:glima31/scripts.git
cd scripts
chmod +x install.sh
./install.sh
```

Make sure `~/.local/bin` is in your `$PATH`. If not, add it to `~/.zshrc`:
```bash
export PATH="$HOME/.local/bin:$PATH"
```

## Usage
After running the installation script, the following commands will be available:
```bash
system-update    # update Arch packages + Flatpak + Rust toolchain 
nas-backup       # incremental backup to NAS (rsync)
```
