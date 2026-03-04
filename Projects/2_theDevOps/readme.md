# Project 2
Now i will work on new project named as TheDevOps. I have complete a project in which i was live a website: workflow-   User Browser--->Cloudflare DNS + Tunnel--->AWS EC2 (Web Server)--->Nginx--->/var/www/anantglobal
   ├── index.html
   ├── css/
   ├── images/
   └── php files


   ## Project TheDevOps Workflow:  Developer
   │
   │ git push
   ▼
GitHub Repository
   │
   │ Webhook
   ▼
Jenkins Server (EC2 #1)
   │
   │ CI Pipeline
   │
   ├── Pull latest code
   ├── Validate build
   ├── Package artifacts
   │
   ▼
Deployment Stage
   │
   │ SSH
   ▼
Web Server (EC2 #2)
   │
   ├── Backup current site
   ├── Replace files
   ├── Reload Nginx
   │
   ▼
Live Website Updated
