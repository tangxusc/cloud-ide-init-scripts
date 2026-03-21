sudo usermod -aG sudo ubuntu
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
npm install -g @openai/codex

ssh-keygen -t rsa -b 4096 -C "562050688@qq.com"

#配置claude 私钥
cat >> ~/.bashrc << 'EOF'
export ANTHROPIC_BASE_URL='https://api.autocode.space'
export ANTHROPIC_AUTH_TOKEN='sk-xxxxx'
EOF

mkdir -p ~/.codex

cat > ~/.codex/config.toml << 'EOF'
model_provider = "codex-for-me"
model = "gpt-5.2"
model_reasoning_effort = "high"
disable_response_storage = true

[model_providers.codex-for-me]
name = "codex-for-me"
base_url = "https://api-vip.codex-for.me/v1"
wire_api = "responses"
requires_openai_auth = true
EOF

cat > ~/.codex/auth.json << 'EOF'
{
"OPENAI_API_KEY": "sk-om9Db...C14"
}
EOF

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
