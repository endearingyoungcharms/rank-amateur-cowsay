class Cowsay < Formula
  desc "Configurable talking characters in ASCII art"
  # Historical homepage: https://web.archive.org/web/20120225123719/www.nog.net/~tony/warez/cowsay.shtml
  # Based on Formula "https://github.com/tnalpgge/rank-amateur-cowsay"
  url "https://github.com/daniel-nelson-looker/homebrew-cowsay-looker/archive/0.1.1.tar.gz"
  sha256 "f166fc4b369cf5dbc2cb690ddebac0509a8789177024309012b4bceb819e3319"
  
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
