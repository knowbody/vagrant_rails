ps aux | grep 'sshd:' | awk '{print $2}' | xargs kill

