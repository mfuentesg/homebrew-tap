# This file was generated by GoReleaser. DO NOT EDIT.
class Ksd < Formula
  desc "ksd` is a tool, whose aim is help you to visualize in text plain your kubernetes secrets, either `yaml` or `json` outputs."
  homepage "https://github.com/mfuentesg/ksd"
  version "1.0.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mfuentesg/ksd/releases/download/v1.0.6/ksd_1.0.6_Darwin_x86_64.tar.gz"
    sha256 "2243460d4d2ceee4c9e54bcbdc7a0b647b83e8d3fd7b3b167d4c93ff0c9ac324"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mfuentesg/ksd/releases/download/v1.0.6/ksd_1.0.6_Linux_x86_64.tar.gz"
      sha256 "40d05bc3c3a1564978939a2dd750f03f7c0ad36101be63d8d0b1f2f1cf1111d5"
    end
  end

  def install
    bin.install "ksd"
  end

  def caveats; <<~EOS
    ksd < kubectl get secret <secret name> <secret file>.<yaml|json>
  EOS
  end

  test do
    ksd version
  end
end
