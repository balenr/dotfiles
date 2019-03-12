# Path to your oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

TERM=xterm-256color

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="white"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="black"

zsh_wifi_signal(){
        local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
        local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

        if [ "$airport" = "Off" ]; then
                local color='%F{black}'
                echo -n "%{$color%}Wifi Off"
        else
                local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
                local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
                local color='%F{black}'

                [[ $speed -gt 100 ]] && color='%F{black}'
                [[ $speed -lt 50 ]] && color='%F{red}'

                echo -n "%{$color%}$speed Mbps \uf1eb%{%f%}" # removed char not in my PowerLine font
        fi
}

POWERLEVEL9K_TIME_ICON=''
POWERLEVEL9K_TIME_FORMAT='%D{\uF017 %H:%M \uF073 %d-%m-%y}'

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon battery context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ip custom_wifi_signal ram load virtualenv)

#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

POWERLEVEL9K_RAM_BACKGROUND='yellow'

#POWERLEVEL9K_OS_ICON_BACKGROUND='white'
#POWERLEVEL9K_OS_ICON_FOREGROUND='grey'

POWERLEVEL9K_LOAD_NORMAL_BACKGROUND='white'
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND='black'
POWERLEVEL9K_LOAD_WARNING_BACKGROUND='white'
POWERLEVEL9K_LOAD_WARNING_FOREGROUND='yellow'
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND='white'
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND='red'
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_SHOW_CHANGESET='true'

POWERLEVEL9K_STATUS_VERBOSE=true
export DEFAULT_USER="$USER"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=14

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colorize
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  python
  virtualenv
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Aliases
alias cls='clear'
alias down='cd ~/Downloads'
alias lc='colorls'

# Settings for Ruby from HomeBrew
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
