FROM node:20.12.0

RUN apt-get update

# 개발 도구 설치
RUN apt-get install -y git curl jq tree vim net-tools

# Bash 설치
RUN apt-get install -y bash bash-completion
# 기본 셸을 bash로 설정 (Ubuntu에서는 기본적으로 bash가 기본 셸임)
# 색상 있는 프롬프트 설정
RUN echo 'PS1="\[\033[32m\]\w\[\033[00m\] "' >> ~/.bashrc
RUN echo "alias ls='ls --color=auto'" >> ~/.bashrc
RUN echo "alias l='ls --color=auto -lA'" >> ~/.bashrc

# Docker 설치
# https://docs.docker.com/engine/install/debian/
RUN apt-get update && \
  apt-get install -y ca-certificates curl gnupg && \
  install -m 0755 -d /etc/apt/keyrings && \
  curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
  chmod a+r /etc/apt/keyrings/docker.gpg && \
  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null && \
  apt-get update && \
  apt-get install -y docker-ce-cli

EXPOSE 4000
