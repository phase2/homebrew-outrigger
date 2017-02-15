class Rig < Formula
  desc "Containerized platform environment for projects. See https://outrigger.sh for documentation. "
  homepage "https://outrigger.sh"
  url "https://s3.amazonaws.com/phase2.outrigger/rig-1.1.0.tar.gz"
  version "1.1.0"
  sha256 "33b3408d8fbed1a91c5a2b655c66d87e19eb4b9a94ee82c570492053da1c0c3a"

  depends_on "docker"
  depends_on "docker-machine"
  depends_on "docker-compose"
  depends_on "docker-machine-nfs"

  def install
    bin.install "rig"
    bin.install "docker-machine-watch-rsync.sh"

    bash_completion.install "bash_autocomplete" => "rig"
    zsh_completion.install "zsh_autocomplete" => "_rig"
  end

  test do
    system "#{bin}/rig", "--version"
  end
end
