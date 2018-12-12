class OutriggerCli < Formula
  desc "Containerized development environment for projects. See https://docs.outrigger.sh for documentation."
  homepage "https://outrigger.sh/"
  url "https://github.com/phase2/rig/releases/download/2.3.0/outrigger-cli-2.3.0-macOS-amd64.tar.gz"
  version "2.3.0"
  sha256 "13b97641000a36a5ccc3ef00b9c31b89606bf2b172b52869f92dde5056e79db5"
  
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
