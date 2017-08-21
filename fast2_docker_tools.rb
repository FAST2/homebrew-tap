class Fast2DockerTools < Formula
  desc "Installations och körpaket för att starta och köra docker containers"
  homepage "http://webdocker:8090/view/Base/job/installationspaket-bin/"
  url "http://webdocker:8090/view/Base/job/installationspaket-bin/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz"
  version "1.2.67"
  sha256 "9d8986e72bf3c0c2d7720cde22a3ed1cf57e44483a4b42a760ae76853c9875d0"

  def install
    bin.install Dir["*.sh"], Dir["templates"]
  end

  test do
    #Kollar bara att templates ligger i mappen precis över docker_doctor.
    system "ls #{bin}/docker_doctor.sh && ls #{bin}/templates/docker-compose-web-template.yml"
  end
end
