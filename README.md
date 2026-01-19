# eos-housekeeping
Personal housekeeping scripts for my EndeavourOS setup. This is obviously tailored to my specific workflow and software ecosystem, which includes Synology NAS backups, Flatpak and the Rust toolchain. 
I decided to make this public as a reference for others looking to automate their own maintenance routine.

## Installation
```bash
git clone https://codeberg.org/glima31/eos-housekeeping.git
cd eos-housekeeping
chmod +x install.sh
./install.sh
```

Make sure `~/.local/bin` is in your `$PATH`. If not, add to `~/.zshrc`:
```bash
export PATH="$HOME/.local/bin:$PATH"
```

## Usage
```bash
system-update    # weekly maintenance routine
nas-backup       # manual backup to NAS
```
