# 区切り文字やアイコン（一目でなにか分かる名前にしておく）
set -l separator_triangle           \ue0b0
set -l icon_cross                   \uf00d
set -l icon_plus                    \uf067  # 追加
set -l icon_three_point_reader      \uf6d7  # 追加
set -l icon_octocat                 \uf113  # 追加

# 区切り文字などを、少し抽象的な名前で登録する
set segment_separator               $separator_triangle         # 追加
set icon_miss                       $icon_cross                 # 追加
set icon_untracked                  $icon_three_point_reader    # 追加
set icon_git_symbol                 $icon_octocat               # 追加
set icon_git_dirty                  $icon_plus                  # 追加

set icon_home                       \uf7db  # 追加
set icon_folder                     \uf07c  # 追加

set color_user
set color_git_status_bar

function _segment
    set_color -b $argv[1] $argv[2]
    echo -n "$segment_separator "
end

function _prompt_dir
    # 〜ここから〜
    if [ $HOME = $PWD ]; printf ' %s ' (set_color $black)$icon_home
    else; printf ' %s ' (set_color $black)$icon_folder; end
    # 〜ここまでを追加〜
    printf ' %s ' (set_color $black)(prompt_pwd)
    if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
        _change_color_git_status_bar
        _segment $color_git_status_bar $color_user;
    else
        _segment normal $color_user
    end
end
 
function _prompt_user
    printf '%s ' (set_color $h_purple)(whoami)
   _segment $h_orange $color_dark
 
end
 
# 〜ここから〜
function _git_prompt_untracked
    echo (command git ls-files --others --exclude-standard --directory --no-empty-directory --error-unmatch -- :/ 2> /dev/null)
end
 
function _git_status_symbol
    if [ (_git_prompt_untracked) ]; echo -n "$icon_untracked "
    else if [ (_is_git_dirty) ]; echo -n "$icon_git_dirty "; end
end
# 〜ここまでを追加〜
 
function _change_color_git_status_bar
    if [ (_is_git_dirty) ]; set color_git_status_bar $black
    else; set color_git_status_bar $black; end
end
 
function _is_git_dirty
    echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end
 
function _prompt_git
    if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set -l git_branch (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
        set -l git_status_symbol (_git_status_symbol)                                       # 追加
        _change_color_git_status_bar
        set_color -b $color_git_status_bar
        printf '%s ' (set_color $h_purple)"$icon_git_symbol $git_branch $git_status_symbol"    # 変更
        _segment normal $color_git_status_bar
    end
end

function fish_prompt
    set -l last_status $status
    set_color -b $color_dark $white
    if [ $last_status -gt 0 ]
        echo -n (set_color $white)" $icon_miss "
        set color_user $color_warning
    else
        set color_user $h_orange
    end

    set -g fish_prompt_pwd_dir_length 12

    _prompt_user
    _prompt_dir
    _prompt_git
    echo
    echo "🌜 "
end

