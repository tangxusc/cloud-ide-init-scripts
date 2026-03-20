sudo apt update
sudo apt-get install bison -y
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source /root/.gvm/scripts/gvm
gvm install go1.26.1 -B
gvm use go1.26.1 --default
go version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
nvm install node
node -v
npm install -g @anthropic-ai/claude-code

#配置claude 私钥
cd /etc/profile.d/
cat > claude.sh << 'EOF'
export ANTHROPIC_BASE_URL='https://api.autocode.space'
export ANTHROPIC_AUTH_TOKEN='sk-xxxxx'
EOF

cd ~
claude
/plugin marketplace add affaan-m/everything-claude-code
/plugin install everything-claude-code@everything-claude-code

#cd /tmp/
#git clone https://github.com/affaan-m/everything-claude-code.git
#mkdir -p /root/.claude/rules/
#cp -r everything-claude-code/rules/common/* ~/.claude/rules/
#cp -r everything-claude-code/rules/golang/* ~/.claude/rules/

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
npm install -g @openai/codex
