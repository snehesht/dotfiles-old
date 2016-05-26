# name: RobbyRussel
#
# You can override some default options in your config.fish:
#   set -g theme_display_git_untracked no

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  set -l show_untracked (git config --bool bash.showUntrackedFiles)
  set untracked ''
  if [ "$theme_display_git_untracked" = 'no' -o "$show_untracked" = 'false' ]
    set untracked '--untracked-files=no'
  end
  echo (command git status -s --ignore-submodules=dirty $untracked ^/dev/null)
end

function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  if test $last_status = 0
      # set arrow "$green➜ "
      set arrow "$blue"
  else
      # set arrow "$red➜ "
      set arrow "$red"
  end


  set -l cwd $cyan(basename (prompt_pwd))

  # if [ (_git_branch_name) ]
  #   set -l git_branch $yellow(_git_branch_name)
  #   # set git_info "$blue git:($git_branch$blue)"
  #   set git_info "$blue [ $git_branch"

  #   if [ (_is_git_dirty) ]
  #     set -l dirty "$red ✗ "
  #     set git_info "$git_info$dirty"
  #     set git_info "$git_info $blue]"
  #   else
  #     set -l clean "$green ✓"
  #     set git_info "$git_info$clean"
  #     set git_info "$git_info $blue]"
  #   end
  # end
  if [ (_git_branch_name) ]
    set -l git_branch $yellow(_git_branch_name)
    # set git_info "$blue git:($git_branch$blue)"
    set git_info "$green | $git_branch"

    if [ (_is_git_dirty) ]
      set -l dirty "$red ✗"
      set git_info "$git_info$dirty"
      # set git_info "$git_info $blue]"
    else
      set -l clean "$green ✓"
      set git_info "$git_info$clean"
      # set git_info "$git_info $blue]"
    end
  end

  set -l curr_time $green(date  '+%I:%M %p')
  set -l final_prompt "➤"
  echo -n -s '[' $curr_time $normal ']' ' ' '[' $cwd $normal $git_info $normal ']' $arrow ' $' ' '
end
