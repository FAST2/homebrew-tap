class Fast2DockerTools < Formula
  desc "Installations och körpaket för att starta och köra docker containers"
  homepage "http://webdocker:8090/view/Base/job/installationspaket-bin/"
  url "http://webdocker:8090/view/Base/job/installationspaket-bin/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz"
  version "1.2.61"
  sha256 "5a240cf7e49ad70a98e286b855ba6d022eaa86fe7dbbbe539b55cfb0831d72cd"

  def install
    bin.install Dir["*.sh"], Dir["templates"]
  end

  test do
    #Kollar bara att templates ligger i mappen precis över docker_doctor.
    system "ls #{bin}/docker_doctor.sh && ls #{bin}/templates/docker-compose-web-template.yml"
  end
end
