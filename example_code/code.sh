# 
# shell-agnostic setup
# 
export SHELL_SOURCE="$HOME/.config/shell/"
export SHELL_STANDARD_ENV_VERSION_MAJOR="0"
export SHELL_STANDARD_ENV_VERSION_MINOR="0"
export SHELL_STANDARD_ENV_VERSION_PATCH="1"

# 
# connect commands
# 
__user_commands_path__="$SHELL_SOURCE/commands"
for file in "$__user_commands_path__/"*
do
    # make each is executable
    chmod ugo+x "$file" &>/dev/null || sudo chmod ugo+x "$file"
done
export PATH="${PATH}:$__user_commands_path__"

# 
# run the setup
# 
mkdir -p "$SHELL_SOURCE/setup/zsh/"
touch "$SHELL_SOURCE/setup/zsh/before_start.zsh"
source "$SHELL_SOURCE/setup/zsh/before_start.zsh"