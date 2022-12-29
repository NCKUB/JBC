version: "3"
services:
  jbc-bootnode:
    image: jibchain/node:latest
    user: root
    entrypoint: /root/init-script.sh
    command:
      - "--datadir=/datadir/geth"
      - "--networkid=8899"
      - "--bootnodes=enode://2fe036f0a233b05a92c229796dafbdd3d8c19eadc94b99ad04181e4e52d35f8500401a5aac0ed054575c5325f2db34fb491068c15858b65dd7354ca0ef442763@65.108.61.51:30303,enode://9789fb51f949a63fb9e34f7ee450c6de087c743083ce56fb46c1d3a15cb24bc41e988d71e71a95bd0d5a6c6b679f729f89dea487464a94af8d6ac55e161d0558@188.166.250.77:30303,enode://e07a8c0ca434fc67a09053972f25b1e7f614aa317d41100b07500b10c12982b8ae795777651daaf2fcc963d3aea36f980b0f3dd3c49d0e877a1716709d78b430@65.21.251.178:30303"
      - "--v5disc"
      - "--syncmode=snap"
      - "--maxpeers=1000"
    ports:
      - "30303:30303"      
    volumes:
      - "./genesis.json:/datadir/genesis.json"
      - "./datadir/geth:/datadir/geth"
      - "./init-script.sh:/root/init-script.sh"
    restart: always
