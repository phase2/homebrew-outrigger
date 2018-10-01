class OutriggerCli < Formula
  desc "Containerized development environment for projects. See https://docs.outrigger.sh for documentation."
  homepage "https://outrigger.sh/"
  url "https://github.com/phase2/rig/releases/download/2.2.1/outrigger-cli-2.2.1-macOS-amd64.tar.gz"
  version "2.2.1"
  sha256 "b4c7acd42ae09e5e8e0ab0d33068918dbe9d59a47417adf027496d51be744056"
  
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
