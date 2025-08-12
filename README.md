# Command Snippets for Personal Use

## Table of Contents

- [Gost](#gost)
- [DD Debian](#dd-debian)
- [DD Debian from CN](#dd-debian-from-cn)
- [YABS](#yabs)
- [IP Check](#ip-check)
- [dnsmasq](#dnsmasq)
- [Nexttrace](#nexttrace)
- [Enable BBR](#enable-bbr)
- [Nezha Dashboard](#nezha-dashboard)
- [SSH Config](#ssh-config)
- [Xray](#xray)
- [Shadowsocks](#shadowsocks)
- [Tcping](#tcping)
- [CF Warp](#cf-warp)
- [NetQuality](#netquality)
- [Sing-Box](#sing-box)
- [Nezha Agent](#nezha-agent)
- [Realm](#realm)
- [Realm from CN](#realm-from-cn)
- [IPv4/v6 Priority](#ipv4v6-priority)

## Gost

```bash
wget --no-check-certificate -O gost.sh https://raw.githubusercontent.com/KANIKIG/Multi-EasyGost/master/gost.sh && chmod +x gost.sh && ./gost.sh
```

## DD Debian

```bash
curl -O https://raw.githubusercontent.com/bin456789/reinstall/main/reinstall.sh || wget -O reinstall.sh $_
bash reinstall.sh debian 12 --ssh-key "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINetVzRgShomRm/5j/Hp6ohRqMrpUMmIC1ymFHSAaw1p secon@timcook"
```

## DD Debian from CN

```bash
curl -O https://cnb.cool/bin456789/reinstall/-/git/raw/main/reinstall.sh || wget -O reinstall.sh $_
bash reinstall.sh debian 12 --ssh-key "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINetVzRgShomRm/5j/Hp6ohRqMrpUMmIC1ymFHSAaw1p secon@timcook"
```

## YABS

```bash
curl -sL yabs.sh | bash
```

## IP Check

```bash
bash <(curl -sL IP.Check.Place)
```

## dnsmasq

```bash
wget https://raw.githubusercontent.com/KKKKKCAT/KKScript/main/script/dnsmasq/dns.sh && bash dns.sh
```

## Nexttrace

```bash
curl nxtrace.org/nt |bash
```

## Enable BBR

```bash
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
sysctl net.ipv4.tcp_available_congestion_control
lsmod | grep bbr
```

## Nezha Dashboard

```bash
curl -L https://raw.githubusercontent.com/chenx-dust/nezha-compat/compat/script/install.sh -o nezha.sh
bash nezha.sh
```

## SSH Config

```bash
bash <(curl -sL https://raw.githubusercontent.com/BIGGASSS/sshconfig/refs/heads/master/sshconfig.sh)
```

## Xray

```bash
wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
```

## Shadowsocks

```bash
bash <(curl -sL https://github.com/BIGGASSS/shadowsocks_install/raw/refs/heads/master/shadowsocks-all.sh)
```

## Tcping

```bash
bash <(curl -sL https://github.com/BIGGASSS/tcping/raw/refs/heads/main/tcping.sh)
```

## CF Warp

```bash
wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh
```

## NetQuality

```bash
bash <(curl -sL Net.Check.Place)
```

## Sing-Box

```bash
bash <(curl -sL https://github.com/BIGGASSS/SingBoxInstall/raw/refs/heads/master/SingBoxInstall.sh)
```

## Nezha Agent

```bash
wget https://github.com/nezhahq/agent/releases/download/v0.20.5/nezha-agent_linux_amd64.zip
```

## Realm

```bash
wget -N https://raw.githubusercontent.com/qqrrooty/EZrealm/main/realm.sh && chmod +x realm.sh && ./realm.sh
```

## Realm from CN

```bash
wget -N https://ghfast.top/https://raw.githubusercontent.com/qqrrooty/EZrealm/main/CN/realm.sh && chmod +x realm.sh && ./realm.sh
```

## IPv4/v6 Priority

```bash
bash <(curl -sL https://github.com/BIGGASSS/ipv_priority/raw/refs/heads/master/ipv_priority.sh)
```
