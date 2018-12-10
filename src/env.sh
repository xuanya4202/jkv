cd ..
curdir=`pwd`
export GOPATH=$curdir
export CGO_CFLAGS="-I ${curdir}/src/vendor/rocksdb/include"
export CGO_LDFLAGS="-L${curdir}/src/vendor/rocksdb -lrocksdb -lstdc++ -lm -lz -lbz2 -lsnappy -llz4 -lzstd"
go get github.com/tecbot/gorocksdb
