class Rig < Formula
  desc "Containerized platform environment for projects. See https://outrigger.sh for documentation. "
  homepage "https://outrigger.sh"
  url "https://s3.amazonaws.com/phase2.outrigger/rig-1.2.1.tar.gz"
  version "1.2.1"
  sha256 "ab25cd5aa9647e5f622d9308a245410f60a40f014a9acde6ae83785381f31a10"

  depends_on "docker"
  depends_on "docker-machine"
  depends_on "docker-compose"
  depends_on "docker-machine-nfs"

  def install
    bin.install "rig"
    bin.install "docker-machine-watch-rsync.sh"

    #bash_completion.install "bash_autocomplete" => "rig"
    #zsh_completion.install "zsh_autocomplete" => "_rig"
  end

  test do
    system "#{bin}/rig", "--version"
  end
end
