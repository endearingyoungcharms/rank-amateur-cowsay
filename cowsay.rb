class Cowsay < Formula
  desc "Configurable talking characters in ASCII art"
  # Historical homepage: https://web.archive.org/web/20120225123719/www.nog.net/~tony/warez/cowsay.shtml
  # Based on Formula "https://github.com/tnalpgge/rank-amateur-cowsay"
  url "https://github.com/jessehub/homebrew-cowsay-looker/archive/cowsay-looker-0.1.tar.gz"
  sha256 "963eea5551f92c5b8a9c12283d23f53840a2cd4d78fdf35c553038202a4e0f16"
  
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
