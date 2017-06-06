class Rig < Formula
  desc "Containerized platform environment for projects. See https://outrigger.sh for documentation. "
  homepage "https://outrigger.sh"
  url "https://s3.amazonaws.com/phase2.outrigger/rig-1.3.0.tar.gz"
  version "1.3.0"
  sha256 "6c1d55533c7e390adedc0dfdf107a770cfe4aae85a7cbb387978b6fd9b91a6dc"

  depends_on "docker"
  depends_on "docker-machine"
  depends_on "docker-compose"
  depends_on "docker-machine-nfs"
  depends_on "unison"
  depends_on "eugenmayer/dockersync/unox"

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
