class Rig < Formula
  desc "Containerized platform environment for projects. See https://outrigger.sh for documentation. "
  homepage "https://outrigger.sh"
  url "https://s3.amazonaws.com/phase2.outrigger/rig-1.2.0.tar.gz"
  version "1.2.0"
  sha256 "ec14467e08033b9f7f5cceaa3621046e05d9832f24fce7851da349321b9c8dc7"

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
