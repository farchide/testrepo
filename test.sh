server dns-rhel.fcloud.local
debug yes
zone fcloud.local.
update add testnsupdate.fcloud.local. 86400 CNAME testns
show
send

dig fcloud.local SOA
nslookup 10.91.64.6
dig -x 10.91.64.6

168.63.129.16

update add testnsupdate.fcloud.local. 86400 CNAME testn
nsupdate
> update add hubvm.fcloud.local 86400 a 10.91.64.5
> send

service network restart
sudo named-checkconf


