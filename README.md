# DNS Proxy
proxy DNS query to a secured upstream DNS server

# INSTALL

```
git clone https://github.com/hugozhu/dns_proxy.git

cd dns_proxy

export GOPATH=`pwd`

go get github.com/hugozhu/dns

go get github.com/boltdb/bolt

go get golang.org/x/net/proxy
```

# RUN

`go run main.go --port 1053 --proxy socks5://192.168.1.4:1080 --up_dns 8.8.8.8:53`