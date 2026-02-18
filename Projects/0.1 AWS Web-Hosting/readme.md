# Make my First project on AWS by hosting Web-site

## Tools.
1. AWS EC2: t3.micro
2. OpenSSH to connect with Instance
3. Nginx


## Steps:

1. Created a EC2 instance: t3.micro and download a .pem key pair.  Then launch instance.
2. connect with instance using OpenSSh and .pem key 
ssh -I key-location hostname@publicIP

3. Download Nginx:
sudo apt install nginx
sudo systemctl enable nginx
sudo systemctl status nginx     : At this points nginx should be Running

4. clone anantglobal file from my GitHub repo.
https://github.com/ankittshrmaa/anantglobal.git

git clone https://github.com/ankittshrmaa/anantglobal.git

5. copy anantglobal to var/www/html
cp -r anantglobal var/www/html

6. check where file should be in 
var/www/html/anantglobal/index.html

7. check inbound traffic status on machine
ufw status 
ufw allow 80/tcp

8. Check nginx default file configuration : 
nano /etc/nginx/sites-available/default

the default server should be pointed to port 80/tcp

9. Open browser and check 
http://13.232.143.175/anantglobal

10. Site should be UP 




## Problems I Got.

I was successfully launch instance.
Nginx was downloaded and Working fine
anantglobal file is in exact location

But while browsing its show showing 
the problem is in AWS security: Inbound fules on 80/tcp .

Then was only one rule shown that is for SSH 

So I create a new rule for inbound traffic on port 80 from anywhere.

This was the step I forgot and cause a problem
##After that site was running  fine 



# Right Now this looks like:
### User → Nginx → static files.

But Its help me to understand the flow and how the production level architecture are made in production. There is no devops tool or automation is done for now.

# Future Improvement:
Real backend deployment you are approaching (and I will do soon):

### User → AWS-ALB → Nginx → Python/FastAPI/Node → Containers → database

Move to real production level environment and will use DevOps tools to Automate jobs and function also i will try to understand and use the tools that is worked on real production.
