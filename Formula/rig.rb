class Rig < Formula
  desc "Containerized platform environment for projects. See https://outrigger.sh for documentation. "
  homepage "https://outrigger.sh"
  url "https://s3.amazonaws.com/phase2.outrigger/rig-1.1.0.tar.gz"
  version "1.1.0"
  sha256 "bd24474416adb5de906c1880492a15b51cccce3c4d28a979de7b2bcf6949dd15"

  depends_on "docker"
  depends_on "docker-machine"
  depends_on "docker-compose"
  depends_on "docker-machine-nfs"

  def install
    bin.install "rig"
    bin.install "docker-machine-watch-rsync.sh"
    bin.install "rig_completer"

    bash_completion.install "bash_autocomplete" => "rig"
    zsh_completion.install "zsh_autocomplete" => "_rig"
  end

  test do
    system "#{bin}/rig", "--version"
  end
end
