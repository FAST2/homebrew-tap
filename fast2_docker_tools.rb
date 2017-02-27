class Fast2DockerTools < Formula
  desc "Installations och körpaket för att starta och köra docker containers"
  homepage "http://webdocker:8090/view/Base/job/installationspaket/"
  url "http://webdocker:8090/view/Base/job/installationspaket/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz"
  version "1.2.39"
  sha256 "15e65f66492fdd25481fd9798f8f0856ba96f7019acf9655d4cd2ef1a7838473"

  def install
    bin.install Dir["*.sh"], Dir["templates"]
  end

  test do
    #Kollar bara att templates ligger i mappen precis över docker_doctor.
    system "ls #{bin}/docker_doctor.sh && ls #{bin}/templates/docker-compose-web-template.yml"
  end
end
