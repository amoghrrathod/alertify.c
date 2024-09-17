class Alertify < Formula
  desc "CLI tool for managing reminders"
  homepage "https://github.com/amoghrrathod/alertify"
  url "https://github.com/amoghrrathod/alertify/releases/download/v1.0.0/alertify-1.0.1.tar.gz"
  sha256 "e00f1ec48ef7cc3f5237f3669ec5c505d8814d529e873e7038bad05fcbce2812"

  depends_on "jansson"
  depends_on "uuid"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/alertify", "--version"
  end
end
