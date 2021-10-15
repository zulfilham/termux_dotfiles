# Termux dotfiles

<p align="center">
   <img src="https://github.com/zulfilham/termux_dotfiles/blob/master/termux_customized.jpeg" width="480" title="Termux Customized" alt="Termux Customized">
</p>

## Installation
**Warning**: These configurations are default to my personal preferences.  Don't blindly use them, your informations such as username, email, etc is going to be different with mine, so go ahead and change those settings on your own.

**Important**: Don't forget to restart Termux after installation, otherwise some configurations may not work properly.

* Multi-line Commands
```bash
curl --silent https://codeload.github.com/zulfilham/termux_dotfiles/legacy.tar.gz/master | \
   tar --recursive-unlink --one-top-level=termux_dotfiles --strip-components=1 --extract --gzip && \
bash termux_dotfiles/install.sh;
rm --force --recursive termux_dotfiles;
```

* Single-line Commands
```bash
curl -s https://codeload.github.com/zulfilham/termux_dotfiles/legacy.tar.gz/master | tar --recursive-unlink --one-top-level=termux_dotfiles --strip-components=1 -xz && bash termux_dotfiles/install.sh; rm -fr termux_dotfiles;
```
