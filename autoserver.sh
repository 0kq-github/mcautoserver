echo "###############################################################"
echo ""
echo "Minecraft Server 自動構築 for CentOS"
echo "eula https://www.minecraft.net/ja-jp/terms/r3/"
echo ""
echo "###############################################################"

read -p "eulaに同意しますか？(y/n): " eula

if [ $eula = y ]; then
 :
else
 echo "eulaに同意する必要があります"
 exit
fi

java -version &> /dev/null
 if [ $? -ne 0 ] ; then
  read -p "javaのインストールを行いますか？(y/n): " javainst
 else
  :
fi

read -p "マイクラのバージョン(1.12~1.18.2対応): " mcver

read -p "メモリ割り当て量(単位込みで入力してください): " mem

read -p "起動するポート: " mcport

if [[ $javainst = y ]]; then
 #curl -OL https://cdn.discordapp.com/attachments/832626889335504986/861168988616654849/adoptopenjdk.repo
 #mv adoptopenjdk.repo /etc/yum.repos.d/
 #sudo yum install -y adoptopenjdk-16-openj9-jre
 sudo yum -y install java-17-openjdk
fi

mkdir "minecraft_server_${mcver}"
chmod 777 "minecraft_server_${mcver}"
cd "minecraft_server_${mcver}"

if [ $mcver = "1.12" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/8494e844e911ea0d63878f64da9dcc21f53a3463/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.12.1" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/561c7b2d54bae80cc06b05d950633a9ac95da816/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.12.2" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.13" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/d0caafb8438ebd206f99930cfaecfa6c9a13dca0/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.13.1" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.13.2" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.14" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.14.1" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.14.2" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.14.3" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.14.4" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.15" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/e9f105b3c5c7e85c7b445249a93362a22f62442d/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.15.1" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.15.2" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.16" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/a0d03225615ba897619220e256a266cb33a44b6b/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.16.1" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.16.2" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/c5f6fb23c3876461d46ec380421e42b289789530/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.16.3" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.16.4" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.16.5" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
 curl -L -o log4j2_112-116.xml https://launcher.mojang.com/v1/objects/02937d122c86ce73319ef9975b58896fc1b491d1/log4j2_112-116.xml
 echo java -Dlog4j.configurationFile=log4j2_112-116.xml -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.17" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar
 echo java -Dlog4j2.formatMsgNoLookups=true -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.17.1" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar
 echo java -Dlog4j2.formatMsgNoLookups=true -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.18" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar
 echo java -Dlog4j2.formatMsgNoLookups=true -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.18.1" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar
 echo java -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
elif [ $mcver = "1.18.2" ]; then
 curl -L -o server.jar https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar
 echo java -Xmx$mem -Xms$mem -server -jar server.jar nogui > start.sh
else
 echo "対応していないバージョンです"
 exit
fi

echo "eula=true" > eula.txt
echo "server-port=${mcport}" > server.properties
chmod +x start.sh
echo "構築が完了しました。"
echo "サーバー起動コマンド"
echo "cd ./minecraft_server_${mcver}/ && bash ./start.sh"
