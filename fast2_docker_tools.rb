class Fast2DockerTools < Formula
  desc "Installations och körpaket för att starta och köra docker containers"
  homepage "http://webdocker:8090/view/Base/job/installationspaket-bin/"
  url "http://webdocker:8090/view/Base/job/installationspaket-bin/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz"
  version "1.2.81"
  sha256 "c031d2b5263ab3a911e1b3760c73d4ca6002e88389932c057f07d308a3c8f166"

  def install
    bin.install Dir["*.sh"], Dir["templates"]
  end

  test do
    #Kollar bara att templates ligger i mappen precis över docker_doctor.
    system "ls #{bin}/docker_doctor.sh && ls #{bin}/templates/docker-compose-web-template.yml"
  end
end
