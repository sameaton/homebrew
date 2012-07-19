require 'formula'


class Vcsh < Formula
  version '1.0-1'
  homepage 'https://github.com/RichiH/vcsh'
  url 'https://github.com/sameaton/vcsh.git', :tag => 'v1.0-1'

  depends_on 'ronn' => :ruby

  def install
    system "make PREFIX=#{prefix} install" # if this fails, try separate make/make install steps
  end

  def test
    system "vcsh"
  end
end
