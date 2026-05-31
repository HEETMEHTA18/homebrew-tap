# typed: false
# frozen_string_literal: true

class Autodev < Formula
  desc "The App Store for Developers — Clone. Scan. Install. Build."
  homepage "https://github.com/HEETMEHTA18/autodev"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/HEETMEHTA18/autodev/releases/download/v0.1.5/autodev_darwin_amd64.tar.gz"
      sha256 "cf9d50457c9f96dc7fb8f3737584cb8e476da5f411803767e7add65cd1e1ae08"
    end
    on_arm do
      url "https://github.com/HEETMEHTA18/autodev/releases/download/v0.1.5/autodev_darwin_arm64.tar.gz"
      sha256 "b9d8415bc0abef9be9e3cf56dafd6a5affff3f5dbab9444d8923b0638cdf0948"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/HEETMEHTA18/autodev/releases/download/v0.1.5/autodev_linux_amd64.tar.gz"
      sha256 "751c330d0970deefc40cdbafe4b10fd0b196993f37d0f01b5b65a9afbece0ed2"
    end
    on_arm do
      url "https://github.com/HEETMEHTA18/autodev/releases/download/v0.1.5/autodev_linux_arm64.tar.gz"
      sha256 "240632a76283f57864824d7893c3c3925e3ada5a270d6896e2d711c7ee1f48db"
    end
  end

  def install
    bin.install "autodev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/autodev --version")
  end
end
