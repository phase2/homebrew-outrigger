class OutriggerCli < Formula
  desc "Containerized development environment for projects. See https://docs.outrigger.sh for documentation."
  homepage "https://outrigger.sh/"
  url "https://github.com/phase2/rig/releases/download/2.1.1/outrigger-cli-2.1.1-macOS-amd64.tar.gz"
  version "2.1.1"
  sha256 "5905547cd7011f22ebcc27a9df6508b58680d89c8588ff992602bfd5582ad31d"
  
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
