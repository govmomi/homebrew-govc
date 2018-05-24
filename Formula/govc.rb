class Govc < Formula
  desc "govc is a vSphere CLI built on top of govmomi."
  homepage "https://github.com/vmware/govmomi/blob/master/govc/README.md"
  url "https://github.com/vmware/govmomi/releases/download/v0.18.0/govc_darwin_amd64.tar.gz"
  version "0.18.0"
  sha256 "d1aec35ca15587361c1b3faa159662c5af96be5c0d0de00aaacdf1b8dc1c860b"

  def install
    bin.install "govc"
  end

  test do
    system "#{bin}/govc version"
  end
end
