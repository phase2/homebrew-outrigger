class OutriggerCli < Formula
  desc "Containerized development environment for projects. See https://docs.outrigger.sh for documentation."
  homepage "https://outrigger.sh/"
  url "https://github.com/phase2/rig/releases/download/2.1.3/outrigger-cli-2.1.3-macOS-amd64.tar.gz"
  version "2.1.3"
  sha256 "b2b60f71effe9c03cc663c4bebaceaec998642ab55bfd404ff84e3ebdde04c2e"
  
  depends_on "docker"
  depends_on "docker-machine"
  depends_on "docker-compose"
  depends_on "docker-machine-nfs"
  depends_on "unison"
  depends_on "phase2/dockersync/unox"

  def install
    bin.install "rig"
  end

  test do
    system "#{bin}/rig", "--version"
  end

  devel do
    version "2.2.0-rc3"
    url "https://github.com/phase2/rig/releases/download/2.2.0-rc3/outrigger-cli-2.2.0-rc3-macOS-amd64.tar.gz"
    sha256 "3862ef3332854979955c717bd3053549e8fdc0f983b8f2874ae968c8b9edd5fd"
  end
end
