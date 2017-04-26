class Fast2DockerTools < Formula
  desc "Installations och körpaket för att starta och köra docker containers"
  homepage "http://webdocker:8090/view/Base/job/installationspaket-bin/"
  url "http://webdocker:8090/view/Base/job/installationspaket-bin/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz"
  version "1.2.56"
  sha256 "de21be87b83d0c1cf99e37721814d8595886e937eb5503e8230b4f0cd411984c"

  def install
    bin.install Dir["*.sh"], Dir["templates"]
  end

  test do
    #Kollar bara att templates ligger i mappen precis över docker_doctor.
    system "ls #{bin}/docker_doctor.sh && ls #{bin}/templates/docker-compose-web-template.yml"
  end
end
