FROM ubuntu:18.04
RUN apt update \
    && apt install -y zsh curl git wget systemd \
    && zsh --version \
    && chsh -s $(which zsh) \
    && sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ENTRYPOINT [ "zsh" ]