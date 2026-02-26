# Anant global project now live as a full website: Version 0.1
Domain: https://anantglobal.in/

### Tools and config.
1. AWS: EC2- Ubuntu_24, t3.micro
2. Nginx: Web-server and Reverse Proxy
3. CloudFlare-tunnel


###  AWS: 
Host this website in AWS-EC2 service, Ubuntu-24.04, t3.micro, vCPU- 2, Memory- 2GB, Volume- 8GB.
This configuration is enough for this project, for further deployments, I will use another instance and do deployment on this one. 


###  Nginx: 
Its is a lightweight, secure and flexible web-server/ reverse proxy. 
I use nginx as this is open-source and compatible option for Ubuntu server.

### CloudFlare Tunnel:
cloud-flare offer a great service where we can create a tunnel from our system to DNS without ant static IP
If we don't have any static IP then this is the best option to host website, Easy to use and a lot of free option from Cloud flare.

## Architecture:

Internet → Cloudflare → secure outbound tunnel → EC2 (hidden machine)

[ User Browser ]
        |
        | 1. DNS Query
        v
[ Cloudflare DNS ]
        |
        | 2. HTTPS (TLS terminates here)
        v
[ Cloudflare Edge (WAF + CDN + Reverse Proxy) ]
        |
        | 3. Encrypted persistent tunnel (outbound from server)
        v
[ cloudflared Agent running on EC2 ]
        |
        | 4. Local HTTP
        v
[ Nginx :80 ]
        |
        v
[ Website files /var/www/html ]