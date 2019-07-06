[Unit]
Description="HashiCorp Consul"

After=cloud-init.target
After=network-online.target

[Service]
ExecStart=/usr/local/bin/consul agent -config-dir=/etc/consul.d
ExecReload=/usr/local/bin/consul reload
Type=notify
KillMode=process
Restart=on-failure
LimitNOFILE=65536

[Install]
WantedBy=cloud-init.target
