class OutriggerCli < Formula
  desc "Containerized development environment for projects. See https://docs.outrigger.sh for documentation."
  homepage "https://outrigger.sh/"
  url "https://github.com/phase2/rig/releases/download/2.1.0/outrigger-cli-2.1.0-macOS-amd64.tar.gz"
  version "2.1.0"
  sha256 "6fdba4bce923de641bab28efdd8a9bd81289899026e79a90a1d6bce3d34b0514"
  
  depends_on "docker"
  depends_on "docker-machine"
  depends_on "docker-compose"
  depends_on "docker-machine-nfs"
  depends_on "unison"
  depends_on "eugenmayer/dockersync/unox"

  def install
    bin.install "rig"
  end

  test do
    system "#{bin}/rig", "--version"
  end
end
