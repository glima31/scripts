# scripts
My collection of personal housekeeping scripts. Although this is obviously tailored to my specific workflows, system specifications and software ecosystem, I decided to make this public so i can easily access it and also as a reference for others looking to automate their own maintenance routine.

## Installation
```bash
git clone git@github.com:glima31/scripts.git
cd scripts
chmod +x install.sh
./install.sh
```

By default `install.sh` installs every script. To install only a subset, pass
the script names (without the `.sh` extension) as arguments:
```bash
./install.sh backup ebook-backup 
```
An unknown name aborts the install.

Make sure `~/.local/bin` is in your `$PATH`. If not, add it to `~/.zshrc`:
```bash
export PATH="$HOME/.local/bin:$PATH"
```

## Usage
After running the installation script, the following commands will be available:
```bash
backup           # incremental backup of my /mnt/data partition to NAS (rsync)
ebook-backup     # incremental backup of my Calibre Library + my Pocketbook Books/ and applications/ folders to a local directory (rsync)
system-update       # interactive update for my Fedora installation: packages + Flatpak + Rust toolchain
```
