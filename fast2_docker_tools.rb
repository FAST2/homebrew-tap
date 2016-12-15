class Fast2DockerTools < Formula
  desc "Installations och körpaket för att starta och köra docker containers"
  homepage "http://webdocker:8090/view/Base/job/installationspaket/"
  url "http://webdocker:8090/view/Base/job/installationspaket/lastSuccessfulBuild/artifact/docker-fast2install.tar.gz"
  version "1.2.26"
  sha256 "51c4424b5541daa2bc00ce550df07a06e88c610c215ae5682c2d1eccf34aff28"

  def install
    bin.install Dir["*.sh"], Dir["templates"]
  end

  test do
    #Kollar bara att templates ligger i mappen precis över docker_doctor.
    system "ls #{bin}/docker_doctor.sh && ls #{bin}/templates/docker-compose-web-template.yml"
  end
end
