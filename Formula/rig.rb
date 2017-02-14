class Rig < Formula
  desc "Containerized platform environment for projects. See https://outrigger.sh for documentation. "
  homepage "https://outrigger.sh"
  url "https://s3.amazonaws.com/phase2.outrigger/rig-1.1.0.tar.gz"
  version "1.1.0"
  sha256 "0b3f838e0afe6f1afc8f7aa4c494f3ba9df2cb4ebb60a9bf02222c7b8ba9cbe2"

  depends_on "docker"
  depends_on "docker-machine"
  depends_on "docker-compose"
  depends_on "docker-machine-nfs"

  def install
    bin.install "rig"
    bin.install "docker-machine-watch-rsync.sh"
  end

  test do
    system "#{bin}/rig", "--version"
  end
end
