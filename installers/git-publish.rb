require 'formula'

class GitPublish < Formula
  homepage "http://www.will-ob.com/git-publish/"
  url 'https://api.github.com/repos/will-ob/git-publish/tarball'
  sha1 '2ed45f83c5cfee56a94423da0848b7c7e82f29f2'
  version '0.1.0'

  def install
    bin.install "git-publish"
  end
end
