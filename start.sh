echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Nhân bản chi nhánh chính...."
  git clone https://github.com/tasequaylai2020/botrepv2 /VideoPlayerBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/tasequaylai2020/botrepv2 -b $BRANCH /VideoPlayerBot
fi
cd /VideoPlayerBot
pip3 install -U -r requirements.txt
echo "Khởi động Bot...."
python3 main.py
