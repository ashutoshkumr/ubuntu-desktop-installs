- Login to Firefox (and install ABP)
- From Ubuntu Software, install
  - Gnome Tweaks
  - VSCode
  - remmina (RDP)
  - Spotify
- In Settings
  - Change background and lockscreen display to have https://wallpaperplay.com/walls/full/b/3/1/108049.jpg
  - Enable Auto-hide dock, change icon size to 30 and position to bottom
  - Change Privacy -> Screen Lock -> Blank Screen Delay = 15 mins
  - Power -> Keyboard Brightness = mid
  - Displays -> Enable Fractional Scaling -> Scale 150%
  - Touch Speed 100% -> Mouse Speed 75%
  - Time Format = AM / PM
- In Gnome Tweaks
  - Uncheck "Suspend when laptop lid is closed"
  - Extensions -> Disable Desktop Icons
  - Top Bar -> Enable Weekday and Battery Percentage
- In Terminal Settings
  - General -> Open new terminals in tab
  - Profiles -> Colors -> Uncheck "Use colors from system theme"
- Install VSCode extensions
  - Python
  - C++
  - ESLint
  - Docker
  - Kubernetes
  - Rust
  - Go
  - One Dark Pro theme
  - Code Spell Checker
  - Remote Development
  - CMake
  - YAML
  - Angular Language Service
- In taskbar, remove unwanted apps from Favourites
- Install Rust
  ```sh
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  ```
- Install Go
  ```sh
  curl -kLO https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
  sudo tar -C /usr/local -xzf go1.14.2.linux-amd64.tar.gz
  echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
  ```
 - Install Docker
   ```sh
   sudo apt install docker.io
   sudo systemctl enable --now docker
   sudo usermod -aG docker $(whoami)
   ```
