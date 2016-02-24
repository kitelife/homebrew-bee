class Bee < Formula
    homepage "https://github.com/beego/bee"
    desc "Bee is a tool for helping develop with beego app framework."

    head "https://github.com/beego/bee.git"

    def install
        system "mkdir" "-p" "#{buildpath}/src/github.com/beego/bee"
        system "cp" "-r" "./*" "#{buildpath}/src/github.com/beego/bee"
        ENV["GOPATH"] = buildpath

        system "go" "install" "github.com/beego/bee"

        system "cp" "#{buildpath}/bin/bee" "#{bin}/"

        (HOMEBREW_PREFIX/bin).install_symlink "#{bin}/bee"
    end
end
