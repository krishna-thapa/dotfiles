## How To Install and Use Docker
  ```
  sudo apt install docker.io 
  sudo systemctl enable --now docker
  sudo usermod -aG docker ${USER}
  su - ${USER}
  groups
  docker --version
  ```

## How To Install and Use Docker-compose
  ```
  sudo curl -L "https://github.com/docker/compose/releases/download/v2.2.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  docker-compose --version
  ``` 

## How to install Git
`sudo apt install git`