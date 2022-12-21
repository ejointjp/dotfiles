# sshディレクトリがなければ作成
mkdir ~/.ssh
# .sshへ移動
cd ~/.ssh
# 鍵を作成
ssh-keygen -t rsa
# 公開鍵をコピー
pbcopy < ~/.ssh/id_rsa.pub

echo "GitHubでSSHを設定してください"
open https://github.com/settings/keys -a "Safari"
echo "https://github.com/settings/keys を開きます"