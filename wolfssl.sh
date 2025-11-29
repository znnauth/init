apt update
apt upgrade
apt install -y build-essential automake autoconf libtool libpcre3-dev zlib1g-dev libssl-dev libxml2-dev libxslt1-dev libgd-dev libgeoip-dev libperl-dev libcurl4-openssl-dev libjansson-dev libmaxminddb-dev libyajl-dev libjemalloc-dev libatomic-ops-dev libgoogle-perftools-dev libreadline-dev libncurses5-dev libluajit-5.1-dev libhiredis-dev libmhash-dev libmcrypt-dev libpam0g-dev libcap-dev libbsd-dev libedit-dev libevent-dev libsqlite3-dev libavcodec-dev libavformat-dev libavutil-dev libswscale-dev pkg-config cmake git wget curl libjansson-dev libyajl-dev  libmaxminddb-dev libjemalloc-dev libluajit-5.1-dev autoconf automake  libtool
cd /
git clone https://github.com/wolfSSL/wolfssl.git
cd wolfssl
./autogen.sh
./configure --enable-camellia --enable-aesccm --enable-aesgcm --enable-ecc --enable-pwdbased --enable-opensslall --enable-kyber --enable-dilithium --enable-sni --enable-truncatedhmac --enable-tlsx  --enable-shared --enable-intelasm --enable-aesni --enable-sp-math-all --enable-sp-asm --enable-sniffer --enable-aes-bitsliced --enable-sessioncerts --enable-intelasm --enable-xmss --enable-certgen --enable-sslv3 --enable-examples --enable-testcert   --enable-nginx  --enable-des3-tls-suites   --enable-des3 --enable-acert  --enable-sha512 --enable-md4 --enable-md5 --enable-dh --enable-ech --enable-dsa --enable-tls13 --enable-all  --enable-quic --enable-session-ticket  --enable-curve25519 --enable-ed25519 --enable-curve448 --enable-ed448 --enable-opensslextra --enable-dtls --enable-dtls13 --enable-certgen --enable-keygen --enable-intelasm --enable-benchmark --enable-harden --enable-secure-renegotiation --enable-experimental  --enable-earlydata --enable-pkcs11 --enable-tlsv10 --enable-sctp --enable-psk --enable-dual-alg-certs --enable-lms=yes CFLAGS="-O3 -march=native"--enable-wolfclu --prefix=/usr/local
make -j
make install
git clone https://github.com/wolfSSL/wolfCLU.git
cd wolfCLU
./autogen.sh
./configure CFLAGS="-O2"
make CFLAGS="-O2"
make -j
make install
echo "/usr/local" >> /etc/ld.so.conf
ldconfig
curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && sudo bash quick_start.sh