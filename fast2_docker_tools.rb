class Fast2DockerTools < Formula
  desc "Installations och körpaket för att starta och köra docker containers"
  homepage "http://webdocker:8090/view/Base/job/installationspaket-bin/"
  url "http://webdocker:8090/view/Base/job/installationspaket-bin/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz"
  version "1.2.75"
  sha256 "7f0246ec97e5094dca677a25ea657bde3346b2b905c8bdefef49c3d42a8ea4aa"

  def install
    bin.install Dir["*.sh"], Dir["templates"]
  end

  test do
    #Kollar bara att templates ligger i mappen precis över docker_doctor.
    system "ls #{bin}/docker_doctor.sh && ls #{bin}/templates/docker-compose-web-template.yml"
  end
end
