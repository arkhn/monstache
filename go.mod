module github.com/rwynn/monstache

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/aws/aws-sdk-go v1.34.28
	github.com/coreos/go-systemd v0.0.0-20191104093116-d3cd4ed1dbcf
	github.com/evanphx/json-patch v4.9.0+incompatible
	github.com/fsnotify/fsnotify v1.4.9
	github.com/klauspost/compress v1.10.11 // indirect
	github.com/kr/pretty v0.2.1 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/olivere/elastic/v7 v7.0.20
	github.com/robertkrimen/otto v0.0.0-20191219234010-c382bd3c16ff
	github.com/rwynn/gtm/v2 v2.0.9
	github.com/serialx/hashring v0.0.0-20200727003509-22c0c7ab6b1b // indirect
	github.com/xdg/stringprep v1.0.0 // indirect
	go.mongodb.org/mongo-driver v1.4.2
	golang.org/x/crypto v0.0.0-20200820211705-5c72a883971a // indirect
	golang.org/x/sync v0.0.0-20200625203802-6e8e738ad208 // indirect
	golang.org/x/sys v0.0.0-20200831180312-196b9ba8737a // indirect
	gopkg.in/Graylog2/go-gelf.v2 v2.0.0-20191017102106-1550ee647df0
	gopkg.in/natefinch/lumberjack.v2 v2.0.0
	gopkg.in/sourcemap.v1 v1.0.5 // indirect
)

replace github.com/globalsign/mgo v0.0.0-20181015135952-eeefdecb41b8 => github.com/rwynn/mgo v0.0.0-20190318130802-4743670bc61d

go 1.13
