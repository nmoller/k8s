FROM jenkins 
# cette image roule jenkins comme root:wsimmonds/jenkins-kubernetes:2.8

# image de base nmolleruq/jenkkube:1.0

USER root
RUN  curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
     && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
# Faire le setup necessaire pour que le config contient ce dont on a besoin.

USER jenkins
# Ne pas oublier que cette image roule le service comme user jenkins:jenkins (1000:1000)
# s'assurer que /var/jenkins_home lui appartient.  