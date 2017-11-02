class Rig < Formula
  desc "Containerized platform environment for projects. See https://outrigger.sh for documentation. "
  homepage "https://outrigger.sh"
  url "https://s3.amazonaws.com/phase2.outrigger/rig-1.3.2.tar.gz"
  version "1.3.2"
  sha256 "82dd773501335b20d462092654cf5e612d7df4aa16e81657fd0da7408d6b8225"

  devel do
    url "https://s3.amazonaws.com/phase2.outrigger/rig-2.0.0-rc1-macOS-amd64.tar.gz"
    sha256 "e50551adbdf0ade1207ec61bd64784df5d35c5a4b2c4f21cd0ba4833a3e081e5"
  end

  depends_on "docker"
  depends_on "docker-machine"
  depends_on "docker-compose"
  depends_on "docker-machine-nfs"
  depends_on "unison"
  depends_on "eugenmayer/dockersync/unox"
  
  def install
    bin.install "rig"
    bin.install "docker-machine-watch-rsync.sh" if not build.devel?

    #bash_completion.install "bash_autocomplete" => "rig"
    #zsh_completion.install "zsh_autocomplete" => "_rig"
  end

  test do
    system "#{bin}/rig", "--version"
  end
end
