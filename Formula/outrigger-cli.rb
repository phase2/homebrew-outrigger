class OutriggerCli < Formula
  desc "Containerized development environment for projects. See https://docs.outrigger.sh for documentation."
  homepage "https://outrigger.sh/"
  url "https://github.com/phase2/rig/releases/download/2.0.0/outrigger-cli-2.0.0-macOS-amd64.tar.gz"
  version "2.0.0"
  sha256 "747ac0512974c815d969be388b145b95a0a62bfcf19d234369f1173b1b54a0d4"

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
