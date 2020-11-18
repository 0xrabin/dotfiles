abbr -a -U -- htop 'htop -t'
abbr -a -U -- myip 'curl checkip.amazonaws.com'
abbr -a -U -- nc ncat
abbr -a -U -- psg 'ps aux | grep -v grep | grep -i -e VSZ -e'
abbr -a -U -- starttor 'sudo service tor start'
abbr -a -U -- wget 'wget -c'
abbr -a -U -- www 'python3 -m http.server 1337'
abbr -a -U -- xclip 'xclip -selection clipboard'



function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t $history[1]; commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -t ""
            commandline -f history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end
