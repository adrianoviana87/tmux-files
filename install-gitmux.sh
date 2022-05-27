#!/bin/sh

install_gitmux()
{
  mkdir out
  cd out
  wget https://github.com/arl/gitmux/releases/download/v0.7.9/gitmux_0.7.9_linux_amd64.tar.gz
  mkdir out
  tar -xvf gitmux_0.7.9_linux_amd64.tar.gz -C out
  cd out
  sudo mv * /usr/local/bin/
  cd ..
  rm -rf out
  cd ..
  rm -rf out
}

echo '🔲 installing gitmux...'
echo '✅ all done!'

install_gitmux
