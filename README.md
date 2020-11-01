## What is termux dotfiles
Configuration files for Termux.

<p align="center">
   <img src="https://github.com/zulfilham/termux_dotfiles/blob/master/termux_customized.jpeg" width="480" title="Termux Customized" alt="Termux Customized">
</p>

## How to install
   - Multiline command:
      ```
      pkg up -y;
      pkg install -y git;
      git clone https://github.com/zulfilham/termux_dotfiles.git;
      bash termux_dotfiles/install.sh;
      ```

   - Oneline command:
      ```
      pkg up -y; pkg install -y git && git clone https://github.com/zulfilham/termux_dotfiles.git && bash termux_dotfiles/install.sh;
      ```

## How to update
   ```
   cd termux_dotfiles;
   git pull origin master;
   ```
