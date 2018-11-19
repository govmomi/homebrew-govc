class Govc < Formula
  desc "govc is a vSphere CLI built on top of govmomi."
  homepage "https://github.com/vmware/govmomi/blob/master/govc/README.md"
  url "https://github.com/vmware/govmomi/releases/download/v0.19.0/govc_darwin_amd64.gz"
  version "0.19.0"
  sha256 "9b67f43580cdd731ff1b963e6767248e8bbdb523c29fb97d54210574ff6e085a"

  def install
    mv "govc_darwin_amd64","govc"
    bin.install "govc"
  end

  test do
    system "#{bin}/govc version"
  end
end
