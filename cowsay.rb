class Cowsay < Formula
  desc "Configurable talking characters in ASCII art"
  # Historical homepage: https://web.archive.org/web/20120225123719/www.nog.net/~tony/warez/cowsay.shtml
  # Based on Formula "https://github.com/tnalpgge/rank-amateur-cowsay"
  url "https://github.com/daniel-nelson-looker/homebrew-cowsay-looker/archive/0.1.2.tar.gz"
  sha256 "6781394cfb28a4cc83bedecc8a92d715f5e34b907d7c8d27a4ba1d7ea16a9dcf"
  
  def install
    system "/bin/sh", "install.sh", prefix
    mv prefix/"man", share
  end

  test do
    output = shell_output("#{bin}/cowsay moo")
    assert_match "moo", output  # bubble
    assert_match "^__^", output # cow
  end
end
