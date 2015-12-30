class Fast2DockerTools < Formula
  desc "Installations och körpaket för att starta och köra docker containers"
  homepage "http://webdocker:8090/view/Base/job/installationspaket/"
  url "http://webdocker:8090/view/Base/job/installationspaket/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz"
  version "0.9.1"
  sha256 "0e85ed033d4fd7ddb8d6c80b3daa3e8aa3e11ec90eeac639282b6d1cbf749e03"

  def install
    bin.install Dir["*.sh"], Dir["templates"]
  end

  test do
    #Kollar bara att templates ligger i mappen precis över docker_doctor.
    system "ls #{bin}/docker_doctor.sh && ls #{bin}/templates/docker-compose-web-template.yml"
  end
end
