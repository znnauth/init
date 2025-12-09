apt update
apt upgrade
apt install -y build-essential automake autoconf libtool libpcre3-dev zlib1g-dev libssl-dev libxml2-dev libxslt1-dev libgd-dev libgeoip-dev libperl-dev libcurl4-openssl-dev libjansson-dev libmaxminddb-dev libyajl-dev libjemalloc-dev libatomic-ops-dev libgoogle-perftools-dev libreadline-dev libncurses5-dev libluajit-5.1-dev libhiredis-dev libmhash-dev libmcrypt-dev libpam0g-dev libcap-dev libbsd-dev libedit-dev libevent-dev libsqlite3-dev libavcodec-dev libavformat-dev libavutil-dev libswscale-dev pkg-config cmake git wget curl libjansson-dev libyajl-dev  libmaxminddb-dev libjemalloc-dev libluajit-5.1-dev autoconf automake  libtool gcc g++ make libssl-dev zlib1g-dev libev-dev libpcre2-dev net-tools     libbrotli-dev     liblua5.4-dev     libzstd-dev     libmaxminddb-dev    libdbi-dev     libldap2-dev     libpam0g-dev     libmariadb-dev    libpq-dev     libbz2-dev     libkrb5-dev    libnss3-dev    libmbedtls-dev
cd /
git clone https://github.com/openssl/openssl.git
wget https://github.com/openresty/headers-more-nginx-module/archive/refs/tags/v0.39.tar.gz
tar -zxvf v0.39.tar.gz
cd /
git clone https://github.com/nginx/nginx.git
cd /nginx
chmod +x auto/configure
auto/configure           --with-openssl=/openssl         --with-openssl-opt="enable-ec_nistp_64_gcc_128"      --with-compat  --with-file-aio  --with-http_v3_module   --with-google_perftools_module   --with-http_addition_module  --with-http_xslt_module=dynamic  --with-http_image_filter_module=dynamic     --with-http_flv_module        --with-http_mp4_module  --with-stream_ssl_preread_module   --with-stream=dynamic        --with-stream_geoip_module=dynamic    --with-cpp_test_module    --with-compat    --with-libatomic    --with-pcre-jit  --with-select_module  --with-poll_module 	     --with-debug 	     --with-http_ssl_module 	     --with-http_stub_status_module                 	     --with-http_realip_module                      --with-mail	     --with-http_auth_request_module                	     --with-http_v2_module  	     --with-http_dav_module 	     --with-http_slice_module	     --with-threads   	     --with-http_addition_module --with-http_gunzip_module                      	     --with-http_gzip_static_module                      --with-http_sub_module 	     --with-pcre      --add-module=/headers-more-nginx-module-0.39
make -j1
make install
curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && sudo bash quick_start.sh
