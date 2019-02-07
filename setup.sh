# Add merge tool to $PATH
PATH=$PATH:`pwd`
# Append merge driver configuration to git local config
cat <<EOF>> .git/config
[merge "git-crypt"]
	name = "git-crypt merge driver"
	driver = mergetool.sh %O %A %B
EOF
# Enable pre-commit hook on local repo
ln -s ../../config/hooks/pre-commit.git-crypt.sh .git/hooks/pre-commit
