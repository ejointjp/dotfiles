# sshディレクトリがなければ作成
mkdir ~/.ssh
# .sshへ移動
cd ~/.ssh
# 鍵を作成
ssh-keygen -t rsa
# パーミッションの設定
chmod 600 id_rsa
# 公開鍵をコピー
pbcopy < ~/.ssh/id_rsa.pub

# 設定ファイルを作成
touch config
echo "#メインアカウント
Host github #任意のホスト名
  HostName github.com
  IdentityFile ~/.ssh/id_rsa #メインアカウントの鍵のファイル
  User git
  Port 22
  TCPKeepAlive yes
  IdentitiesOnly yes" >> config

echo "GitHubでSSHを設定してください"
open https://github.com/settings/keys -a "Safari"
echo "https://github.com/settings/keys を開きます"
echo "ssh -T github で接続テストを行なってください"

