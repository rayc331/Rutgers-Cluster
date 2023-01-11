# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

module use /projects/community/modulefiles

module load mpfr/4.0.1-gc563

module load gmp/6.2.0-gc563

module load gcc/9.2.0-gc563

module load cmake/3.15.4-gc563
module load R/4.1.0-gc563

export PATH="~/.local/bin:$PATH"
export PATH="~/.local/bin:$PATH"
