# Termux dotfiles

<p align="center">
   <img src="https://github.com/zulfilham/termux_dotfiles/blob/master/termux_customized.jpeg" width="480" title="Termux Customized" alt="Termux Customized">
</p>

## Installation
**Warning**: This configuration is default to my personal preferences.  Your information such as username, email, etc are going to be different with mine, so go ahead and change those settings on your own before using it.

**Important**: Don't forget to restart Termux after installation, otherwise some configuration will not work.

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
