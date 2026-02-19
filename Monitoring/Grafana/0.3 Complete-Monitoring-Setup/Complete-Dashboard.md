# I have make full Garfana Dashboard for Monitoring.

### Workflow:
Linux(WSL)--> Node-Exporter-->Prometheus-->Windows(Host)-->Grafana-Dashboard

CPU, RAM, DISK, System Uptime, Total Processes, Network

### DashBoard
CPU Monitor--: Time Series

100 - avg(rate(node_cpu_seconds_total{mode="idle"}[1m])) * 100

### RAM Minitor--: Time Series and Guage

(node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes)
/ 1024 / 1024 / 1024


node_memory_MemTotal_bytes
/ 1024 / 1024 / 1024


### Disk monitor--: Guage

node_filesystem_size_bytes{mountpoint="/",fstype!~"tmpfs|overlay"}
/ 1024 / 1024 / 1024


### System uptime--: Stat

time() - node_boot_time_seconds

### Total Processes--: Stat

node_procs_running


### Network--: A: Inbound and B: OutBound  Bar guage

A:   rate(node_network_receive_bytes_total[1m])
B:   rate(node_network_transmit_bytes_total[1m])







