# B2 credentials.
# Extracted settings so both systemd timers and user can just source this when want to work on my B2 backup.
# See https://restic.readthedocs.io/en/latest/030_preparing_a_new_repo.html

export RESTIC_REPOSITORY="sftp:root@st.sci.pfu.edu.ru:/n/backup/restic-repo/beetle.sci.pfu.edu.ru/home"
# export RESTIC_PASSWORD_FILE="/etc/restic/pw.txt"
export RESTIC_PASSWORD="123456"
