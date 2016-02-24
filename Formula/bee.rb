class Bee < Formula
    homepage "https://github.com/beego/bee"
    desc "Bee is a tool for helping develop with beego app framework."

    head "https://github.com/beego/bee.git"

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = buildpath

        system "go", "get", "github.com/beego/bee"

        bin.install "#{buildpath}/bin/bee"
        (HOMEBREW_PREFIX/"bin").install_symlink "#{bin}/bee"
    end
end
