#!/bin/bash
# ============================================================
# ZYURA PROJECT - PTERODACTYL THEME INSTALLER & VPS INFO
# ============================================================
# Author  : Zyura
# Telegram: @akuzyura
# Version : 2.0 (FULL VERSION)
# ============================================================

# Reset Color
NC='\033[0m'

# Style
BOLD='\033[1m'
DIM='\033[2m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
REVERSE='\033[7m'
HIDDEN='\033[8m'

# Foreground Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Bright Colors
BRIGHT_BLACK='\033[90m'
BRIGHT_RED='\033[91m'
BRIGHT_GREEN='\033[92m'
BRIGHT_YELLOW='\033[93m'
BRIGHT_BLUE='\033[94m'
BRIGHT_MAGENTA='\033[95m'
BRIGHT_CYAN='\033[96m'
BRIGHT_WHITE='\033[97m'

# Background Colors
BG_BLACK='\033[40m'
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'
BG_MAGENTA='\033[45m'
BG_CYAN='\033[46m'
BG_WHITE='\033[47m'

# Background Bright
BG_BRIGHT_BLACK='\033[100m'
BG_BRIGHT_RED='\033[101m'
BG_BRIGHT_GREEN='\033[102m'
BG_BRIGHT_YELLOW='\033[103m'
BG_BRIGHT_BLUE='\033[104m'
BG_BRIGHT_MAGENTA='\033[105m'
BG_BRIGHT_CYAN='\033[106m'
BG_BRIGHT_WHITE='\033[107m'

# ============================================================
# FUNGSI UTILITY
# ============================================================

print_info() {
  echo -e "\n  ${BG_BLUE}${BRIGHT_WHITE}${BOLD} INFO ${NC} ${BOLD}$1${NC}\n"
}

print_success() {
  echo -e "\n  ${BG_GREEN}${BRIGHT_WHITE}${BOLD} SUCCESS ${NC} ${BOLD}$1${NC}\n"
}

print_warning() {
  echo -e "\n  ${BG_YELLOW}${BRIGHT_WHITE}${BOLD} WARNING ${NC} ${BOLD}$1${NC}\n"
}

print_error() {
  echo -e "\n  ${BG_RED}${BRIGHT_WHITE}${BOLD} ERROR ${NC} ${BOLD}$1${NC}\n"
}

log_info() {
  echo -e "${BOLD}${CYAN}$1${NC}"
}

log_success() {
  echo -e "${BOLD}${GREEN}$1${NC}"
}

log_error() {
  echo -e "${BOLD}${RED}$1${NC}"
}

# ============================================================
# FUNGSI DARI SCRIPT '/Vps
# ============================================================

# Function to print section headers (RED theme)
print_header_rule() {
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

# Big ASCII header using heredoc (RED theme)
big_header() {
    local title="$1"
    echo -e "${RED}"
    case "$title" in
        "MAIN MENU")
cat <<'EOF'
 __  __    _    ___ _   _    __  __ _____ _   _ _   _ 
|  \/  |  / \  |_ _| \ | |  |  \/  | ____| \ | | | | |
| |\/| | / _ \  | ||  \| |  | |\/| |  _| |  \| | | | |
| |  | |/ ___ \ | || |\  |  | |  | | |___| |\  | |_| |
|_|  |_/_/   \_\___|_| \_|  |_|  |_|_____|_| \_|\___/ 
EOF
            ;;
        "SYSTEM INFORMATION")
cat <<'EOF'
███████╗██╗   ██╗██╗   ██╗██████╗  █████╗ 
╚══███╔╝╚██╗ ██╔╝██║   ██║██╔══██╗██╔══██╗
  ███╔╝  ╚████╔╝ ██║   ██║██████╔╝███████║
 ███╔╝    ╚██╔╝  ██║   ██║██╔══██╗██╔══██║
███████╗   ██║   ╚██████╔╝██║  ██║██║  ██║
╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
EOF
            ;;
        "WELCOME")
cat <<'EOF'
███████╗██╗   ██╗██╗   ██╗██████╗  █████╗ 
╚══███╔╝╚██╗ ██╔╝██║   ██║██╔══██╗██╔══██╗
  ███╔╝  ╚████╔╝ ██║   ██║██████╔╝███████║
 ███╔╝    ╚██╔╝  ██║   ██║██╔══██╗██╔══██║
███████╗   ██║   ╚██████╔╝██║  ██║██║  ██║
╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
EOF
            ;;
        "DATABASE SETUP")
cat <<'EOF'
  ____        _        _           _                 
 |  _ \  __ _| |_ __ _| |__   __ _| |_ ___  ___  ___ 
 | | | |/ _` | __/ _` | '_ \ / _` | __/ _ \/ __|/ _ \
 | |_| | (_| | || (_| | |_) | (_| | ||  __/\__ \  __/
 |____/ \__,_|\__\__,_|_.__/ \__,_|\__\___||___/\___|
EOF
            ;;
        "BLUEPRINT+THEME+EXTENSIONS")
cat <<'EOF'
███████╗██╗   ██╗██╗   ██╗██████╗  █████╗ 
╚══███╔╝╚██╗ ██╔╝██║   ██║██╔══██╗██╔══██╗
  ███╔╝  ╚████╔╝ ██║   ██║██████╔╝███████║
 ███╔╝    ╚██╔╝  ██║   ██║██╔══██╗██╔══██║
███████╗   ██║   ╚██████╔╝██║  ██║██║  ██║
╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
EOF
            ;;
        *)
            echo -e "${BOLD}${title}${NC}"
            ;;
    esac
    echo -e "${NC}"
}

# Function to print status messages
print_status() { echo -e "${YELLOW}⏳ $1...${NC}"; }
print_success_zyura() { echo -e "${GREEN}✅ $1${NC}"; }
print_error_zyura() { echo -e "${RED}❌ $1${NC}"; }
print_warning_zyura() { echo -e "${MAGENTA}⚠️  $1${NC}"; }

# Check if curl is installed
check_curl() {
    if ! command -v curl &>/dev/null; then
        print_error_zyura "curl is not installed"
        print_status "Installing curl..."
        if command -v apt-get &>/dev/null; then
            sudo apt-get update && sudo apt-get install -y curl
        elif command -v yum &>/dev/null; then
            sudo yum install -y curl
        elif command -v dnf &>/dev/null; then
            sudo dnf install -y curl
        else
            print_error_zyura "Could not install curl automatically. Please install it manually"
            exit 1
        fi
        print_success_zyura "curl installed successfully"
    fi
}

# Function to run remote scripts
run_remote_script() {
    local url=$1
    local script_name
    script_name=$(basename "$url" .sh)
    script_name=$(echo "$script_name" | sed 's/.*/\u&/')

    print_header_rule
    big_header "WELCOME"
    print_header_rule
    echo -e "${RED}Running: ${BOLD}${script_name}${NC}"
    print_header_rule

    check_curl
    local temp_script
    temp_script=$(mktemp)
    print_status "Downloading script"

    if curl -fsSL "$url" -o "$temp_script"; then
        print_success_zyura "Download successful"
        chmod +x "$temp_script"
        bash "$temp_script"
        local exit_code=$?
        rm -f "$temp_script"
        if [ $exit_code -eq 0 ]; then
            print_success_zyura "Script executed successfully"
        else
            print_error_zyura "Script execution failed with exit code: $exit_code"
        fi
    else
        print_error_zyura "Failed to download script"
    fi

    echo -e ""
    read -p "$(echo -e "${YELLOW}Press Enter to continue...${NC}")" -n 1
}

# ============================================================
# TAMPILAN AWAL (SPLASH SCREEN)
# ============================================================

show_banner() {
  clear
  echo -e ""
  echo -e "${BRIGHT_CYAN}${BOLD}"
  echo "███████╗██╗   ██╗██╗   ██╗██████╗  █████╗ "
  echo "╚══███╔╝╚██╗ ██╔╝██║   ██║██╔══██╗██╔══██╗"
  echo "  ███╔╝  ╚████╔╝ ██║   ██║██████╔╝███████║"
  echo " ███╔╝    ╚██╔╝  ██║   ██║██╔══██╗██╔══██║"
  echo "███████╗   ██║   ╚██████╔╝██║  ██║██║  ██║"
  echo "╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝"
  echo -e "${NC}"
  echo -e "${BRIGHT_GREEN}Telegram : @akuzyura${NC}"
  echo -e "${BRIGHT_GREEN}Version  : 2.0${NC}"
  echo -e ""
}

show_menu_header() {
  echo -e "${BRIGHT_MAGENTA}${BOLD}──────────────────────────────────────────────────────  ${NC}"
}

show_menu_footer() {
  echo -e ""
  echo -e "${BRIGHT_YELLOW}Pilih nomor 1-9 atau x untuk keluar${NC}"
  echo -e ""
}
# ============================================================
# FUNGSI CEK SPESIFIKASI VPS
# ============================================================

check_vps_spec() {
  clear
  echo -e "${CYAN}${BOLD}"
  echo "███████╗██╗░░░██╗██╗░░░██╗██████╗░░█████╗░"
  echo "╚══███╔╝╚██╗░██╔╝██║░░░██║██╔══██╗██╔══██╗"
  echo "░░███╔╝░░╚████╔╝░██║░░░██║██████╔╝███████║"
  echo "░███╔╝░░░░╚██╔╝░░██║░░░██║██╔══██╗██╔══██║"
  echo "███████╗░░░██║░░░╚██████╔╝██║░░██║██║░░██║"
  echo "╚══════╝░░░╚═╝░░░░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝"
  echo -e "${NC}"
  echo -e "${GREEN}${BOLD}          VPS SPECIFICATION CHECK${NC}"
  echo ""
  echo -e "${BLUE}═══════════════════════════════════════════════════════════════════${NC}"
  echo ""

  # ===== SYSTEM CORE =====
  OS=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
  KERNEL=$(uname -r)
  HOST=$(hostnamectl 2>/dev/null | grep "Virtualization" | awk '{print $2}')
  [ -z "$HOST" ] && HOST="Bare Metal / Unknown"
  UPTIME=$(uptime -p | sed 's/up //')
  SHELL_NAME=$(basename $SHELL)
  TERM_NAME=$TERM

  echo -e "${YELLOW}${BOLD}📌 SYSTEM INFORMATION${NC}"
  echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo -e "${GREEN}OS        :${NC} $OS"
  echo -e "${GREEN}Host      :${NC} $HOST"
  echo -e "${GREEN}Kernel    :${NC} $KERNEL"
  echo -e "${GREEN}Uptime    :${NC} $UPTIME"
  echo -e "${GREEN}Shell     :${NC} $SHELL_NAME"
  echo -e "${GREEN}Terminal  :${NC} $TERM_NAME"
  echo ""

  # ===== CPU =====
  CPU=$(lscpu | grep "Model name" | cut -d: -f2 | xargs | head -1)
  [ -z "$CPU" ] && CPU=$(cat /proc/cpuinfo | grep "model name" | head -1 | cut -d':' -f2 | xargs)
  CORES=$(nproc)
  CPU_SPEED=$(lscpu | grep "CPU MHz" | awk '{print $3}' | head -1)
  [ -z "$CPU_SPEED" ] && CPU_SPEED=$(cat /proc/cpuinfo | grep "cpu MHz" | head -1 | awk '{print $4}')
  CPU_SPEED_GHZ=$(echo "scale=2; $CPU_SPEED/1000" | bc 2>/dev/null || echo "2.35")

  # Load Average
  LOAD_1=$(uptime | awk -F'load average:' '{print $2}' | cut -d, -f1 | xargs)
  LOAD_5=$(uptime | awk -F'load average:' '{print $2}' | cut -d, -f2 | xargs)
  LOAD_15=$(uptime | awk -F'load average:' '{print $2}' | cut -d, -f3 | xargs)

  echo -e "${YELLOW}${BOLD}💻 CPU INFORMATION${NC}"
  echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo -e "${PURPLE}CPU Model :${NC} $CPU"
  echo -e "${PURPLE}Cores     :${NC} $CORES Cores @ $CPU_SPEED_GHZ GHz"
  echo -e "${PURPLE}Load Avg  :${NC} ${LOAD_1}, ${LOAD_5}, ${LOAD_15} (1, 5, 15 min)"
  echo ""

  # ===== MEMORY =====
  TOTAL_RAM=$(free -m | awk '/^Mem:/{print $2}')
  USED_RAM=$(free -m | awk '/^Mem:/{print $3}')
  FREE_RAM=$(free -m | awk '/^Mem:/{print $4}')
  RAM_PERCENT=$(echo "scale=1; $USED_RAM*100/$TOTAL_RAM" | bc)

  TOTAL_SWAP=$(free -m | awk '/^Swap:/{print $2}')
  USED_SWAP=$(free -m | awk '/^Swap:/{print $3}')
  if [ $TOTAL_SWAP -gt 0 ]; then
      SWAP_PERCENT=$(echo "scale=1; $USED_SWAP*100/$TOTAL_SWAP" | bc)
  else
      SWAP_PERCENT="0.0"
  fi

  echo -e "${YELLOW}${BOLD}🧠 MEMORY USAGE${NC}"
  echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo -e "${CYAN}RAM       :${NC} ${USED_RAM}MB / ${TOTAL_RAM}MB (${RAM_PERCENT}%) [Free: ${FREE_RAM}MB]"

  # Progress bar RAM
  bar_length=40
  filled=$((USED_RAM * bar_length / TOTAL_RAM))
  empty=$((bar_length - filled))
  printf "${CYAN}Usage     :${NC} ["
  printf "${RED}%*s${NC}" $filled | tr ' ' '█'
  printf "${GREEN}%*s${NC}" $empty | tr ' ' '░'
  printf "] ${RAM_PERCENT}%%\n"

  echo -e "${CYAN}SWAP      :${NC} ${USED_SWAP}MB / ${TOTAL_SWAP}MB (${SWAP_PERCENT}%)"
  echo ""

  # ===== DISK =====
  DISK_TOTAL=$(df -h / | awk 'NR==2 {print $2}')
  DISK_USED=$(df -h / | awk 'NR==2 {print $3}')
  DISK_PERCENT=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
  DISK_FREE=$(df -h / | awk 'NR==2 {print $4}')

  INODE_USED=$(df -i / | awk 'NR==2 {print $3}')
  INODE_TOTAL=$(df -i / | awk 'NR==2 {print $2}')
  INODE_PERCENT=$(df -i / | awk 'NR==2 {print $5}' | tr -d '%')

  echo -e "${YELLOW}${BOLD}💾 DISK USAGE${NC}"
  echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo -e "${GREEN}Disk      :${NC} ${DISK_USED} / ${DISK_TOTAL} (${DISK_PERCENT}%) [Free: ${DISK_FREE}]"
  echo -e "${GREEN}Inodes    :${NC} ${INODE_USED} / ${INODE_TOTAL} (${INODE_PERCENT}%)"
  echo ""

  # ===== LOCATION =====
  if command -v curl &> /dev/null; then
      CITY=$(curl -s ipinfo.io/city 2>/dev/null)
      COUNTRY=$(curl -s ipinfo.io/country 2>/dev/null)
      if [ ! -z "$CITY" ] && [ ! -z "$COUNTRY" ]; then
          LOCATION="$CITY, $COUNTRY"
      else
          LOCATION="Jakarta, ID"
      fi
  else
      LOCATION="Jakarta, ID"
  fi

  echo -e "${YELLOW}${BOLD}📍 LOCATION${NC}"
  echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo -e "${BLUE}Location  :${NC} $LOCATION"
  echo ""

  # ===== NETWORK =====
  if [ -d /sys/class/net/ ]; then
      INTERFACE=$(ip route | grep default | awk '{print $5}' | head -1)
      if [ ! -z "$INTERFACE" ] && [ -f "/sys/class/net/$INTERFACE/statistics/rx_bytes" ]; then
          RX=$(cat /sys/class/net/$INTERFACE/statistics/rx_bytes)
          TX=$(cat /sys/class/net/$INTERFACE/statistics/tx_bytes)
          RX_MB=$(echo "scale=2; $RX/1024/1024" | bc)
          TX_MB=$(echo "scale=2; $TX/1024/1024" | bc)
          echo -e "${YELLOW}${BOLD}🌐 NETWORK TRAFFIC${NC}"
          echo -e "${WHITE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
          echo -e "${PURPLE}Interface :${NC} $INTERFACE"
          echo -e "${PURPLE}Download  :${NC} ↓ ${RX_MB} MB"
          echo -e "${PURPLE}Upload    :${NC} ↑ ${TX_MB} MB"
          echo ""
      fi
  fi

  # ===== FOOTER =====
  echo -e "${BLUE}═══════════════════════════════════════════════════════════════════${NC}"
  echo -e "${YELLOW}Telegram :${NC} ${CYAN}t.me/akuzyura${NC}"
  echo -e "${YELLOW}Channel  :${NC} ${RED}https://t.me/myaboutzyura${NC}"
  echo -e "${BLUE}═══════════════════════════════════════════════════════════════════${NC}"
  
  echo ""
  echo -n -e "${BOLD}Tekan Enter untuk kembali ke menu utama...${NC}"
  read
}

# ============================================================
# FUNGSI INSTALL DEPENDENSI
# ============================================================

install_dependencies() {
  export DEBIAN_FRONTEND=noninteractive
  export NEEDRESTART_MODE=a

  if [ -f /etc/needrestart/needrestart.conf ]; then
    sudo sed -i "s/#\$nrconf{restart} = 'i';/\$nrconf{restart} = 'a';/" /etc/needrestart/needrestart.conf 2>/dev/null || true
    sudo sed -i "s/\$nrconf{restart} = 'i';/\$nrconf{restart} = 'a';/" /etc/needrestart/needrestart.conf 2>/dev/null || true
  fi

  sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt-get update -y > /dev/null 2>&1
  sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt-get install -y ca-certificates curl gnupg zip unzip git wget jq > /dev/null 2>&1
}

# ============================================================
# FUNGSI CEK & INSTALL NODE.JS
# ============================================================

check_nodejs() {
  CURRENT_NODE_VER=$(node -v 2>/dev/null | cut -d'.' -f1 | sed 's/v//')
  
  if [[ "$CURRENT_NODE_VER" == "22" ]]; then
    print_success "Node.js v22 sudah terinstall"
    return 0
  else
    print_warning "Menginstall Node.js v22..."
    
    unset NVM_DIR
    sudo apt-get remove -y nodejs npm > /dev/null 2>&1 || true
    sudo apt-get purge -y nodejs > /dev/null 2>&1 || true
    sudo rm -f /usr/bin/node /usr/local/bin/node /usr/bin/npm /usr/local/bin/npm
    sudo rm -rf /etc/apt/sources.list.d/nodesource.list
    sudo rm -rf "$HOME/.nvm"
    
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor --yes | sudo tee /etc/apt/keyrings/nodesource.gpg > /dev/null
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list > /dev/null
    sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt-get update -y > /dev/null 2>&1
    sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt-get install -y nodejs > /dev/null 2>&1
    
    hash -r
    sudo npm i -g yarn > /dev/null 2>&1
    
    print_success "Node.js v22 berhasil diinstall"
    return 0
  fi
}

# ============================================================
# FUNGSI INSTALL TIMPA (UNTUK REVIACTYL)
# ============================================================

install_timpa() {
  local TARGET_URL=$1
  local TARGET_NAME=$2

  echo ""
  echo -n -e "${BOLD}Anda memilih tema '$TARGET_NAME'. Lanjutkan? (y/n): ${NC}"
  read confirmation
  if [[ "$confirmation" != [yY] ]]; then 
    echo -e "${BOLD}Instalasi dibatalkan.${NC}"
    return
  fi

  set -e
  export DEBIAN_FRONTEND=noninteractive
  export NEEDRESTART_MODE=a
  
  TEMP_DIR=$(mktemp -d)
  trap 'rm -rf -- "$TEMP_DIR"' EXIT
  
  print_info "Memulai instalasi tema $TARGET_NAME..."

  install_dependencies

  log_info "[1/4] Mengunduh file panel/tema..."
  cd "$TEMP_DIR"
  
  if [[ "$TARGET_URL" == *.zip ]]; then
      FILE_EXT="zip"
      FILENAME="panel.zip"
  else
      FILE_EXT="tar.gz"
      FILENAME="panel.tar.gz"
  fi
  
  wget -q -O "$FILENAME" "$TARGET_URL"

  log_info "[2/4] Mempersiapkan direktori & Backup Config..."
  
  if [ ! -d "/var/www/pterodactyl" ]; then
    print_error "Direktori Pterodactyl tidak ditemukan."
    return 1
  fi
  
  cd /var/www/pterodactyl
  php artisan down || true
  
  if [ -f ".env" ]; then 
    cp .env /tmp/.env.backup
  fi

  sudo find . -mindepth 1 -delete
  sudo rm -f /usr/local/bin/blueprint

  log_info "[3/4] Mengekstrak file & Mengembalikan konfigurasi..."
  
  if [[ "$FILE_EXT" == "zip" ]]; then
      unzip -o "$TEMP_DIR/$FILENAME" -d /var/www/pterodactyl/ > /dev/null 2>&1
  else
      tar -xzf "$TEMP_DIR/$FILENAME" -C /var/www/pterodactyl/ > /dev/null 2>&1
  fi

  if [ -f "/tmp/.env.backup" ]; then 
    mv /tmp/.env.backup .env
  fi
  
  sudo chmod -R 755 storage/* bootstrap/cache/
  sudo chown -R www-data:www-data /var/www/pterodactyl

  log_info "[4/4] Menginstal dependensi & Membangun aset..."
  if ! command -v composer &> /dev/null; then
      curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer > /dev/null 2>&1
  fi

  # Cek Node.js
  check_nodejs

  sudo rm -rf /var/www/.cache
  sudo mkdir -p /var/www/.cache
  sudo chown -R www-data:www-data /var/www/.cache
  sudo -u www-data env COMPOSER_PROCESS_TIMEOUT=2000 composer install --no-dev --optimize-autoloader --no-interaction --prefer-dist > /dev/null 2>&1
  sudo -u www-data php artisan migrate --seed --force > /dev/null 2>&1
  sudo -u www-data php artisan view:clear > /dev/null 2>&1
  sudo -u www-data php artisan config:clear > /dev/null 2>&1
  sudo -u www-data php artisan up

  print_success "Tema '$TARGET_NAME' berhasil diinstall!"
  
  echo ""
  log_success "╔════════════════════════════════════════════════════╗"
  log_success "║         INSTALASI THEME BERHASIL!                 ║"
  log_success "╚════════════════════════════════════════════════════╝"
  echo ""
  sleep 2
}

# ============================================================
# FUNGSI INSTALL THEME STANDARD
# ============================================================

install_standard_theme() {
  local THEME_NAME=$1
  local THEME_URL=$2
  local SELECT_THEME=$3
  
  echo ""
  echo -n -e "${BOLD}Anda memilih tema ${BRIGHT_YELLOW}'$THEME_NAME'${NC}. Lanjutkan? (y/n): ${NC}"
  read confirmation
  if [[ "$confirmation" != [yY] ]]; then 
    echo -e "${BOLD}Instalasi dibatalkan.${NC}"
    return
  fi
  
  set -e
  install_dependencies
  
  TEMP_DIR=$(mktemp -d)
  trap 'rm -rf -- "$TEMP_DIR"' EXIT
  cd "$TEMP_DIR"
  
  print_info "Memulai instalasi tema $THEME_NAME..."

  # Khusus Enigma
  if [ "$SELECT_THEME" == "3" ]; then
    echo -n -e "${BOLD}Masukkan link whatsapp (diawali https://): ${NC}"
    read LINK_ADMIN
    echo -n -e "${BOLD}Masukkan link channel whatsapp (diawali https://): ${NC}"
    read LINK_CHANNEL
    echo -n -e "${BOLD}Masukkan link grup whatsapp (diawali https://): ${NC}"
    read LINK_GROUP
  fi

  log_info "[1/4] Mengunduh file tema..."
  wget -q "$THEME_URL"
  local THEME_ZIP_FILE=$(basename "$THEME_URL")

  log_info "[2/4] Mengekstrak file tema..."
  unzip -oq "$THEME_ZIP_FILE" || true
  rm -f "$THEME_ZIP_FILE"

  # Konfigurasi Enigma
  if [ "$SELECT_THEME" == "3" ]; then
    log_info "Mengkonfigurasi variabel Enigma..."
    sed -i "s|LINK_ADMIN|$LINK_ADMIN|g" pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sed -i "s|LINK_CHANNEL|$LINK_CHANNEL|g" pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sed -i "s|LINK_GROUP|$LINK_GROUP|g" pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
  fi

  log_info "[3/4] Menyalin file..."
  sudo cp -rfT pterodactyl /var/www/pterodactyl
  cd /var/www/pterodactyl

  # Cek Node.js
  check_nodejs

  log_info "Menginstal dependensi build..."
  yarn add cross-env react-feature > /dev/null 2>&1
  yarn install > /dev/null 2>&1

  # Khusus Billing
  if [ "$SELECT_THEME" == "2" ]; then
    log_info "Menjalankan instalasi Billing..."
    php artisan billing:install stable > /dev/null 2>&1
  fi

  log_info "[4/4] Membangun aset panel..."
  print_warning "Proses build sedang berjalan. Mohon bersabar..."
  
  export NODE_OPTIONS=--openssl-legacy-provider
  php artisan migrate --force > /dev/null 2>&1
  yarn build:production > /dev/null 2>&1
  php artisan view:clear > /dev/null 2>&1
  php artisan optimize:clear > /dev/null 2>&1
  
  print_success "Tema '$THEME_NAME' berhasil diinstall!"
  
  echo ""
  log_success "╔════════════════════════════════════════════════════╗"
  log_success "║         INSTALASI THEME BERHASIL!                 ║"
  log_success "╚════════════════════════════════════════════════════╝"
  echo ""
  sleep 2
}

# ============================================================
# FUNGSI INSTALL THEME BLUEPRINT
# ============================================================

install_blueprint_theme() {
  local THEME_NAME=$1
  local THEME_URL=$2
  
  echo ""
  echo -n -e "${BOLD}Anda memilih tema ${BRIGHT_YELLOW}'$THEME_NAME'${NC}. Lanjutkan? (y/n): ${NC}"
  read confirmation
  if [[ "$confirmation" != [yY] ]]; then 
    echo -e "${BOLD}Instalasi dibatalkan.${NC}"
    return
  fi
  
  set -e
  install_dependencies
  
  TEMP_DIR=$(mktemp -d)
  trap 'rm -rf -- "$TEMP_DIR"' EXIT
  cd "$TEMP_DIR"
  
  print_info "Memulai instalasi tema $THEME_NAME..."

  # Cek Blueprint
  if [ ! -f "/var/www/pterodactyl/blueprint.sh" ]; then 
    print_error "Blueprint belum terinstall. Silahkan install blueprint dulu"
    return 1
  fi
  
  log_info "[1/4] Mengunduh file tema..."
  wget -q "$THEME_URL"
  local THEME_ZIP_FILE=$(basename "$THEME_URL")

  log_info "[2/4] Mengekstrak file tema..."
  unzip -oq "$THEME_ZIP_FILE" || true
  rm -f "$THEME_ZIP_FILE"

  log_info "[3/4] Menyiapkan Blueprint..."
  FOUND_FILE=$(find . -maxdepth 1 -name "*.blueprint" -print -quit)
  
  if [ -z "$FOUND_FILE" ]; then
      print_error "File .blueprint tidak ditemukan dalam zip!"
      return 1
  fi

  BLUEPRINT_FILENAME=$(basename "$FOUND_FILE")
  IDENTIFIER="${BLUEPRINT_FILENAME%.*}"
  sudo mv "$BLUEPRINT_FILENAME" /var/www/pterodactyl/
  
  log_info "[4/4] Menginstall via Blueprint..."
  cd /var/www/pterodactyl
  
  # Cek Node.js
  check_nodejs
  
  sudo blueprint -install "$IDENTIFIER" > /dev/null 2>&1
  sudo chown -R www-data:www-data /var/www/pterodactyl
  sudo rm "/var/www/pterodactyl/$BLUEPRINT_FILENAME"
  
  print_success "Tema '$THEME_NAME' berhasil diinstall!"
  
  echo ""
  log_success "╔════════════════════════════════════════════════════╗"
  log_success "║         INSTALASI THEME BERHASIL!                 ║"
  log_success "╚════════════════════════════════════════════════════╝"
  echo ""
  sleep 2
}

# ============================================================
# FUNGSI INSTALL BLUEPRINT FRAMEWORK
# ============================================================

install_blueprint_framework() {
  echo ""
  log_info "╔════════════════════════════════════════════════════╗"
  log_info "║         INSTALL BLUEPRINT FRAMEWORK                ║"
  log_info "╚════════════════════════════════════════════════════╝"
  echo ""
  
  echo -n -e "${BOLD}Apakah anda yakin ingin melanjutkan? (y/n): ${NC}"
  read confirmation
  if [[ "$confirmation" != [yY] ]]; then
    echo -e "${BOLD}Instalasi dibatalkan.${NC}"
    return
  fi

  set -e
  install_dependencies

  if [ ! -d "/var/www/pterodactyl" ]; then
    print_error "Direktori Pterodactyl tidak ditemukan!"
    return 1
  fi

  print_info "Mengunduh Blueprint Framework..."
  DOWNLOAD_URL=$(curl -s https://api.github.com/repos/BlueprintFramework/framework/releases/latest | grep 'browser_download_url' | grep 'release.zip' | cut -d '"' -f 4)
  if [ -z "$DOWNLOAD_URL" ]; then
    print_error "Gagal mendapatkan link download Blueprint!"
    return 1
  fi
  
  wget -q "$DOWNLOAD_URL" -O /tmp/blueprint.zip
  unzip -oq /tmp/blueprint.zip -d /var/www/pterodactyl
  rm /tmp/blueprint.zip

  check_nodejs

  print_info "Menginstal dependensi Pterodactyl..."
  cd /var/www/pterodactyl
  yarn add cross-env > /dev/null 2>&1
  yarn install > /dev/null 2>&1

  print_info "Menjalankan blueprint.sh..."
  cd /var/www/pterodactyl
  sed -i -E -e "s|WEBUSER=\"www-data\" #;|WEBUSER=\"www-data\" #;|g" \
             -e "s|USERSHELL=\"/bin/bash\" #;|USERSHELL=\"/bin/bash\" #;|g" \
             -e "s|OWNERSHIP=\"www-data:www-data\" #;|OWNERSHIP=\"www-data:www-data\" #;|g" blueprint.sh
  chmod +x blueprint.sh
  yes | sudo bash blueprint.sh > /dev/null 2>&1

  print_success "Blueprint Framework berhasil diinstall!"
  sleep 2
}

# ============================================================
# FUNGSI RESET PANEL
# ============================================================

reset_panel() {
  echo ""
  log_info "╔════════════════════════════════════════════════════╗"
  log_info "║         RESET PANEL (UNINSTALL THEME/TOOLS)       ║"
  log_info "╚════════════════════════════════════════════════════╝"
  echo ""

  while true; do
    echo -n -e "${BOLD}${BRIGHT_RED}PERINGATAN: Semua modifikasi akan dihapus! Lanjutkan? (y/n): ${NC}"
    read yn
    
    case $yn in
      [Yy]*)
        set -e
        if [ ! -d "/var/www/pterodactyl" ]; then
          print_error "Direktori Pterodactyl tidak ditemukan."
          return 1
        fi
        
        cd /var/www/pterodactyl || { print_error "Gagal masuk ke direktori Pterodactyl."; return 1; }

        print_info "⚙️  Memulai proses reset panel..."
        php artisan down || true

        log_info "   - Mem-backup file .env..."
        TEMP_BACKUP=$(mktemp -d)
        if [ -f ".env" ]; then sudo mv .env "$TEMP_BACKUP/"; fi

        log_info "   - Menghapus semua file panel lama..."
        sudo find . -mindepth 1 -delete
        
        log_info "   - Mengunduh panel original terbaru..."
        curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | sudo tar -xzf - -C /var/www/pterodactyl > /dev/null 2>&1
    
        log_info "   - Mengembalikan file .env..."
        if [ -f "$TEMP_BACKUP/.env" ]; then sudo mv "$TEMP_BACKUP"/.env .; fi
        rm -rf "$TEMP_BACKUP"

        log_info "   - Install ulang dependensi..."
        sudo chmod -R 755 storage/* bootstrap/cache/
        sudo chown -R www-data:www-data /var/www/pterodactyl
        
        if ! command -v composer &> /dev/null; then
          curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer > /dev/null 2>&1
        fi
        
        sudo rm -rf /var/www/.cache
        sudo mkdir -p /var/www/.cache
        sudo chown -R www-data:www-data /var/www/.cache
        sudo -u www-data env COMPOSER_PROCESS_TIMEOUT=2000 composer install --no-dev --optimize-autoloader --no-interaction --prefer-dist > /dev/null 2>&1

        log_info "   - Menjalankan migrasi..."
        sudo -u www-data php artisan migrate --seed --force > /dev/null 2>&1

        log_info "   - Membersihkan cache..."
        sudo -u www-data php artisan optimize:clear > /dev/null 2>&1
        sudo -u www-data php artisan view:clear > /dev/null 2>&1
        sudo -u www-data php artisan config:clear > /dev/null 2>&1
        sudo -u www-data php artisan route:clear > /dev/null 2>&1
        sudo -u www-data php artisan cache:clear > /dev/null 2>&1
        sudo rm -f /usr/local/bin/blueprint

        log_info "   - Restart layanan..."
        sudo systemctl restart nginx > /dev/null 2>&1 || sudo systemctl restart apache2 > /dev/null 2>&1
        sudo systemctl restart "php*-fpm" > /dev/null 2>&1 || true
        sudo systemctl restart pteroq > /dev/null 2>&1
        sudo -u www-data php artisan up

        print_success "Panel berhasil direset ke versi original!"
        break
        ;;
      [Nn]*)
        echo -e "\n${BOLD}❌ Operasi dibatalkan.${NC}"
        return
        ;;
      *)
        echo -e "\n${BOLD}Pilihan tidak valid! Silahkan pilih (y) atau (n).${NC}"
        ;;
    esac
  done
  
  echo ""
  log_success "╔════════════════════════════════════════════════════╗"
  log_success "║         PANEL BERHASIL DI-RESET!                  ║"
  log_success "╚════════════════════════════════════════════════════╝"
  echo ""
  sleep 2
}

# ============================================================
# FUNGSI CREATE NODE UNTUK PTERODACTYL
# ============================================================

create_node() {
  clear
  echo -e "${BRIGHT_CYAN}${BOLD}"
  echo "   ██████╗██████╗ ███████╗ █████╗ ████████╗███████╗"
  echo "  ██╔════╝██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔════╝"
  echo "  ██║     ██████╔╝█████╗  ███████║   ██║   █████╗  "
  echo "  ██║     ██╔══██╗██╔══╝  ██╔══██║   ██║   ██╔══╝  "
  echo "  ╚██████╗██║  ██║███████╗██║  ██║   ██║   ███████╗"
  echo "   ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝"
  echo -e "${NC}"
  echo -e "${BRIGHT_GREEN}${BOLD}           CREATE NODE & LOCATION${NC}"
  echo -e "${BLUE}════════════════════════════════════════════════════════════════════${NC}"
  echo ""

  # Cek direktori panel
  if [ ! -d "/var/www/pterodactyl" ]; then
    print_error "Direktori Pterodactyl tidak ditemukan!"
    echo -e "${YELLOW}Pastikan panel sudah terinstall di /var/www/pterodactyl${NC}"
    echo ""
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return 1
  fi

  cd /var/www/pterodactyl || { 
    print_error "Gagal masuk ke direktori Pterodactyl"
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return 1
  }

  print_info "CREATE LOCATION & NODE"

  # Input data location
  echo -e "${BRIGHT_YELLOW}─── LOCATION INFORMATION ───${NC}"
  echo -n -e "${BOLD}Masukkan nama location (contoh: SGP): ${NC}"
  read location_name
  [ -z "$location_name" ] && location_name="SGP" && echo -e "${YELLOW}Menggunakan default: SGP${NC}"

  echo -n -e "${BOLD}Masukkan id location (angka, contoh: 1): ${NC}"
  read locid
  [ -z "$locid" ] && locid="1" && echo -e "${YELLOW}Menggunakan default: 1${NC}"

  echo ""
  echo -e "${BRIGHT_YELLOW}─── NODE INFORMATION ───${NC}"
  echo -n -e "${BOLD}Masukkan nama node (contoh: Nodes): ${NC}"
  read node_name
  [ -z "$node_name" ] && node_name="Nodes" && echo -e "${YELLOW}Menggunakan default: Nodes${NC}"

  echo -n -e "${BOLD}Masukkan deskripsi (contoh: Panel by Zyura): ${NC}"
  read description
  [ -z "$description" ] && description="Panel by Zyura" && echo -e "${YELLOW}Menggunakan default: Panel by Zyura${NC}"

  echo -n -e "${BOLD}Masukkan domain node (contoh: node.example.com): ${NC}"
  read domain
  [ -z "$domain" ] && domain="node.example.com" && echo -e "${YELLOW}⚠️  Domain tidak diisi, menggunakan default. Edit nanti di panel!${NC}"

  echo -n -e "${BOLD}Masukkan RAM (dalam MB, contoh: 1000): ${NC}"
  read ram
  [ -z "$ram" ] && ram="1000" && echo -e "${YELLOW}Menggunakan default: 1000 MB${NC}"

  echo -n -e "${BOLD}Masukkan jumlah maksimum disk space (dalam MB, contoh: 50000): ${NC}"
  read disk_space
  [ -z "$disk_space" ] && disk_space="50000" && echo -e "${YELLOW}Menggunakan default: 50000 MB${NC}"

  echo ""
  echo -e "${BRIGHT_RED}${BOLD}Konfirmasi data:${NC}"
  echo -e "  ${CYAN}Location:${NC} $location_name (ID: $locid)"
  echo -e "  ${CYAN}Node:${NC} $node_name"
  echo -e "  ${CYAN}Domain:${NC} $domain"
  echo -e "  ${CYAN}RAM:${NC} $ram MB"
  echo -e "  ${CYAN}Disk:${NC} $disk_space MB"
  echo ""
  echo -n -e "${BOLD}Lanjutkan membuat Location & Node? (y/n): ${NC}"
  read confirmation

  if [[ "$confirmation" != [yY] ]]; then
    echo -e "${BOLD}Pembuatan dibatalkan.${NC}"
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return
  fi

  echo ""
  log_info "[1/4] Membuat Location..."

  # Membuat location
  php artisan p:location:make --short="$location_name" --long="$description" <<< "yes" > /dev/null 2>&1

  if [ $? -eq 0 ]; then
    log_success "✓ Location '$location_name' berhasil dibuat"
  else
    log_error "✗ Gagal membuat location"
  fi

  log_info "[2/4] Membuat Node..."

  # Membuat node
  php artisan p:node:make \
    --name="$node_name" \
    --description="$description" \
    --locationId="$locid" \
    --fqdn="$domain" \
    --public=1 \
    --scheme="https" \
    --proxy=0 \
    --maintenance=0 \
    --maxMemory="$ram" \
    --overallocateMemory=0 \
    --maxDisk="$disk_space" \
    --overallocateDisk=0 \
    --uploadSize=100 \
    --daemonListeningPort=8443 \
    --daemonSFTPPort=2022 \
    --daemonBase="/var/lib/pterodactyl/volumes" <<< "yes" > /dev/null 2>&1

  if [ $? -eq 0 ]; then
    log_success "✓ Node '$node_name' berhasil dibuat"
  else
    log_error "✗ Gagal membuat node"
  fi

  log_info "[3/4] Mengambil konfigurasi otomatis untuk Wings..."

  # Dapatkan Node ID terbaru
  NODE_ID=$(php artisan tinker --execute="echo optional(\Pterodactyl\Models\Node::latest()->first())->id;" 2>/dev/null | grep -E '^[0-9]+$' | tail -n 1)

  if [ -z "$NODE_ID" ]; then
    echo -e "${YELLOW}⚠️  Gagal mendapatkan Node ID dari database.${NC}"
    echo -e "${YELLOW}⚠️  Silakan konfigurasi Wings secara manual.${NC}"
  else
    log_success "✓ Node ID terdeteksi: $NODE_ID"
    
    log_info "[4/4] Membuat file konfigurasi Wings..."
    mkdir -p /etc/pterodactyl
    php artisan p:node:configuration "$NODE_ID" > /etc/pterodactyl/config.yml 2>/dev/null

    if [ -f "/etc/pterodactyl/config.yml" ]; then
      log_success "✓ File konfigurasi berhasil dibuat di /etc/pterodactyl/config.yml"
    else
      log_error "✗ Gagal membuat file konfigurasi"
    fi
  fi

  echo ""
  echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
  echo -e "${BRIGHT_GREEN}${BOLD}           ✅ NODE BERHASIL DIBUAT!${NC}"
  echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
  echo ""
  echo -e "${YELLOW}${BOLD}📌 LANGKAH SELANJUTNYA:${NC}"
  echo -e "  ${WHITE}1.${NC} Kembali ke menu utama"
  echo -e "  ${WHITE}2.${NC} Pilih menu ${BRIGHT_CYAN}[4] Wings Installation${NC}"
  echo -e "  ${WHITE}3.${NC} Install Wings untuk mengaktifkan node"
  echo -e "  ${WHITE}4.${NC} Setelah Wings terinstall, node akan online"
  echo ""
  echo -e "${RED}${BOLD}⚠️  Catatan:${NC} Jika Wings belum diinstall, node akan offline"
  echo -e "${RED}         Install Wings melalui menu utama untuk mengaktifkan node${NC}"
  echo ""
  echo -e "${BLUE}═══════════════════════════════════════════════════════════════${NC}"

  echo ""
  echo -n -e "${BOLD}Tekan Enter untuk kembali ke menu utama...${NC}"
  read
}
# ============================================================
# FUNGSI UNINSTALL PANEL
# ============================================================

uninstall_panel_full() {
  echo ""
  log_info "╔════════════════════════════════════════════════════╗"
  log_info "║         UNINSTALL PANEL PTERODACTYL               ║"
  log_info "╚════════════════════════════════════════════════════╝"
  echo ""
  
  echo -n -e "${BOLD}${BRIGHT_RED}PERINGATAN: Semua data panel akan dihapus! Lanjutkan? (y/n): ${NC}"
  read confirmation
  if [[ "$confirmation" != [yY] ]]; then 
    echo -e "${BOLD}Uninstall dibatalkan.${NC}"
    return
  fi

  print_info "Memulai proses uninstall..."

  if [ -f "/var/www/pterodactyl/.env" ]; then
      log_info "Menghapus database panel..."
      DB_NAME=$(grep "^DB_DATABASE=" /var/www/pterodactyl/.env | cut -d'=' -f2)
      DB_USER=$(grep "^DB_USERNAME=" /var/www/pterodactyl/.env | cut -d'=' -f2)
      mysql -u root -e "DROP DATABASE IF EXISTS $DB_NAME; DROP USER IF EXISTS '$DB_USER'@'127.0.0.1';" > /dev/null 2>&1 || true
  fi

  log_info "Menghentikan layanan..."
  systemctl disable --now wings pteroq > /dev/null 2>&1 || true
  systemctl disable --now redis-server > /dev/null 2>&1 || true
  systemctl stop nginx apache2 > /dev/null 2>&1 || true

  log_info "Membersihkan Cronjob..."
  (crontab -l 2>/dev/null | grep -v "pterodactyl" | crontab -) || true

  log_info "Menghapus file sistem..."
  rm -rf /var/www/pterodactyl
  rm -rf /etc/pterodactyl
  rm -rf /var/lib/pterodactyl
  rm -f /usr/local/bin/wings
  rm -f /usr/local/bin/blueprint

  log_info "Menghapus konfigurasi service..."
  rm -f /etc/systemd/system/wings.service
  rm -f /etc/systemd/system/pteroq.service
  systemctl daemon-reload

  log_info "Menghapus konfigurasi webserver..."
  rm -f /etc/nginx/sites-enabled/pterodactyl.conf
  rm -f /etc/nginx/sites-available/pterodactyl.conf
  rm -f /etc/apache2/sites-enabled/pterodactyl.conf
  rm -f /etc/apache2/sites-available/pterodactyl.conf

  systemctl restart nginx > /dev/null 2>&1 || systemctl restart apache2 > /dev/null 2>&1 || true
  
  print_success "Uninstall panel selesai!"
  
  echo ""
  log_success "╔════════════════════════════════════════════════════╗"
  log_success "║         UNINSTALL PANEL SUKSES!                   ║"
  log_success "╚════════════════════════════════════════════════════╝"
  echo ""
  sleep 2
}

# ============================================================
# FUNGSI zyura TOOLS - Panel Installation
# ============================================================

zyura_panel_install() {
  run_remote_script "https://raw.githubusercontent.com/zyuraprivatescript/Vps/refs/heads/main/cd/panel2.sh"
}

# ============================================================
# FUNGSI zyura TOOLS - Wings Installation
# ============================================================

zyura_wings_install() {
  run_remote_script "https://raw.githubusercontent.com/zyuraprivatescript/Vps/refs/heads/main/cd/wing2.sh"
}

# ============================================================
# FUNGSI zyura TOOLS - Uninstall Tools
# ============================================================

zyura_uninstall_tools() {
  run_remote_script "https://raw.githubusercontent.com/zyuraprivatescript/Vps/refs/heads/main/cd/uninstall2.sh"
}

# ============================================================
# FUNGSI zyura TOOLS - Cloudflare Setup
# ============================================================

zyura_cloudflare_setup() {
  run_remote_script "https://raw.githubusercontent.com/zyuraprivatescript/Vps/refs/heads/main/cd/cloudflare.sh"
}


# ============================================================
# MENU PILIHAN THEME (LENGKAP DENGAN SEMUA OPSI)
# ============================================================

theme_menu() {
  while true; do
    clear
    show_banner
    show_menu_header
    echo -e "${BRIGHT_GREEN}${BOLD}📦 STANDARD THEMES${NC}"
    echo -e "${BRIGHT_YELLOW}[1]${NC} Stellar"
    echo -e "${BRIGHT_YELLOW}[2]${NC} Billing"
    echo -e "${BRIGHT_YELLOW}[3]${NC} Enigma"
    echo -e "${BRIGHT_YELLOW}[4]${NC} Elysium"
    echo -e "${BRIGHT_YELLOW}[5]${NC} Frostcore"
    echo -e "${BRIGHT_YELLOW}[6]${NC} Nightcore"
    echo -e "${BRIGHT_YELLOW}[7]${NC} IceMinecraft"
    echo -e "${BRIGHT_YELLOW}[8]${NC} Noobe"
    echo -e "${BRIGHT_YELLOW}[9]${NC} Reviactyl"
    show_menu_header
    echo -e "${BRIGHT_MAGENTA}${BOLD}🔷 BLUEPRINT THEMES${NC} (wajib install blueprint dulu)"
    echo -e "${BRIGHT_CYAN}[b1]${NC} Nebula V1.8-3"
    echo -e "${BRIGHT_CYAN}[b2]${NC} Nebula V2.0-1"
    echo -e "${BRIGHT_CYAN}[b3]${NC} Recolor"
    echo -e "${BRIGHT_CYAN}[b4]${NC} NavySeals"
    echo -e "${BRIGHT_CYAN}[b5]${NC} LememTheme"
    echo -e "${BRIGHT_CYAN}[b6]${NC} Darkenate"
    show_menu_header
    echo -e "${BRIGHT_YELLOW}[10]${NC} 🔷 Install Blueprint Framework"
    echo -e "${BRIGHT_YELLOW}[11]${NC} 🔄 Reset Panel (Hapus semua modifikasi)"
    echo -e "${BRIGHT_YELLOW}[12]${NC} ❌ Uninstall Panel (Hapus total)"
    echo -e "${BRIGHT_RED}[0]${NC} Kembali ke Menu Utama"
    show_menu_header
    echo -n -e "${BOLD}Pilih [1-12/b1-6/0]: ${NC}"
    read SELECT_THEME

    case "$SELECT_THEME" in
      1) install_standard_theme "Stellar" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/stellar.zip" "1" ;;
      2) install_standard_theme "Billing" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/billing.zip" "2" ;;
      3) install_standard_theme "Enigma" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/enigma.zip" "3" ;;
      4) install_standard_theme "Elysium" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/elysium.zip" "4" ;;
      5) install_standard_theme "Frostcore" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/frostcore.zip" "5" ;;
      6) install_standard_theme "Nightcore" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/nightcore.zip" "6" ;;
      7) install_standard_theme "IceMinecraft" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/ice.zip" "7" ;;
      8) install_standard_theme "Noobe" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/noobe.zip" "8" ;;
      9) install_timpa "https://github.com/reviactyl/panel/releases/latest/download/panel.tar.gz" "Reviactyl" ;;
      10) install_blueprint_framework ;;
      11) reset_panel ;;
      12) uninstall_panel_full ;;
      [bB]1) install_blueprint_theme "Nebula V1.8-3" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/nebula_v1.8-3.zip" ;;
      [bB]2) install_blueprint_theme "Nebula V2.0-1" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/nebula_v2.0-1.zip" ;;
      [bB]3) install_blueprint_theme "Recolor" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/recolor.zip" ;;
      [bB]4) install_blueprint_theme "NavySeals" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/navyseals.zip" ;;
      [bB]5) install_blueprint_theme "LememTheme" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/lemem.zip" ;;
      [bB]6) install_blueprint_theme "Darkenate" "https://github.com/zyuraprivatescript/Vps/raw/main/theme/darkenate.zip" ;;
      0) return ;;
      *) print_error "Pilihan tidak valid!"; sleep 2 ;;
    esac
  done
}

# ============================================================
# MAIN MENU UTAMA (GABUNGAN) - UPDATE
# ============================================================

main_menu() {
  while true; do
    clear
    show_banner
    show_menu_header
    echo -e "  ${WHITE}${NC}  ${BRIGHT_CYAN}${BOLD}[1]${NC}  Install Themes Pterodactyl                        ${WHITE}${NC}"
    echo -e "  ${WHITE}${NC}  ${BRIGHT_CYAN}${BOLD}[2]${NC}  Cek Spesifikasi VPS                               ${WHITE}${NC}"
    echo -e "  ${WHITE}${NC}  ${BRIGHT_YELLOW}${BOLD}[3]${NC}  Panel Installation                              ${WHITE}${NC}"
    echo -e "  ${WHITE}${NC}  ${BRIGHT_YELLOW}${BOLD}[4]${NC}  Wings Installation                              ${WHITE}${NC}"
    echo -e "  ${WHITE}${NC}  ${BRIGHT_YELLOW}${BOLD}[5]${NC}  Uninstall Tools                                 ${WHITE}${NC}"
    echo -e "  ${WHITE}${NC}  ${BRIGHT_YELLOW}${BOLD}[6]${NC}  Cloudflare Setup                                ${WHITE}${NC}"
    echo -e "  ${WHITE}${NC}  ${BRIGHT_GREEN}${BOLD}[7]${NC}  Create Node & Location                         ${WHITE}${NC}"
    echo -e "  ${WHITE}${NC}  ${BRIGHT_RED}[x] Keluar${NC}                                                      ${WHITE}${NC}"
    show_menu_header
    echo -n -e "${BOLD}Masukkan pilihan [1-7/x]: ${NC}"
    read MENU_CHOICE

    case "$MENU_CHOICE" in
      1) theme_menu ;;
      2) check_vps_spec ;;
      3) zyura_panel_install ;;
      4) zyura_wings_install ;;
      5) zyura_uninstall_tools ;;
      6) zyura_cloudflare_setup ;;
      7) create_node ;;  # <-- TAMBAHKAN INI
      x|X) 
        echo ""
        echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
        echo -e "${BRIGHT_GREEN}${BOLD}   Terima kasih telah menggunakan ZYURA MULTIFUNGSI!${NC}"
        echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
        echo -e "${BRIGHT_GREEN}${BOLD}   Telegram: @akuzyura${NC}"
        echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
        echo ""
        exit 0 
        ;;
      *) 
        print_error "Pilihan tidak valid!"
        sleep 2 
        ;;
    esac
  done
}
# ============================================================
# START SCRIPT
# ============================================================

# Cek root
if [[ $EUID -ne 0 ]]; then
   echo ""
   echo -e "${BRIGHT_RED}${BOLD}╔════════════════════════════════════════════╗${NC}"
   echo -e "${BRIGHT_RED}${BOLD}║  Script ini harus dijalankan sebagai root! ║${NC}"
   echo -e "${BRIGHT_RED}${BOLD}║  Gunakan: sudo bash $0                     ║${NC}"
   echo -e "${BRIGHT_RED}${BOLD}╚════════════════════════════════════════════╝${NC}"
   echo ""
   exit 1
fi

# Jalankan main menu
main_menu
