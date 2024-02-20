FROM python:3.9-slim-buster
RUN pip install flask
WORKDIR /var/lib/jenkins/workspace/gitops-argocd_CI
COPY app.py .
EXPOSE 5000
ENTRYPOINT {"pyhton","app.py"}
