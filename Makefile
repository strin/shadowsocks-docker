URL=tianlins/shadowsocks

build:
	docker build -t $(URL):latest .

run:
	docker run d -p 1984:1984 tianlins/shadowsocks -s 0.0.0.0 -p 1984 -k 123456 -m aes-256-cfb

push:
	docker push $(URL):latest
