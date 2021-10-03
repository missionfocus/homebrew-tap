# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mfc < Formula
  desc "Utility toolbelt for Mission Focus engineers"
  homepage "https://missionfocus.com"
  version "2.5.23"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/missionfocus/mfc/releases/download/v2.5.23/mfc_2.5.23_macOS_x86_64.tar.gz"
      sha256 "ae1366e8fd74fd76163494e50656cce62c096ed6a2e6747c1ba12dfde60c0ece"
    end
    if Hardware::CPU.arm?
      url "https://github.com/missionfocus/mfc/releases/download/v2.5.23/mfc_2.5.23_macOS_arm64.tar.gz"
      sha256 "5ad503e084c3299f4987c48060ab4b82d5c2f8770b7ca170918c742cf1b5f870"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/missionfocus/mfc/releases/download/v2.5.23/mfc_2.5.23_Linux_x86_64.tar.gz"
      sha256 "db9f67a2803d8add0b57259aeed43b0639f61aa9bf923ed35ec169615ab46188"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/missionfocus/mfc/releases/download/v2.5.23/mfc_2.5.23_Linux_arm64.tar.gz"
      sha256 "9ae04d073f911a33407cc12fa52b0daf65e403d8a2b5b42481ba19b05fdeb455"
    end
  end

  def install
    bin.install "mfc"
  end

  test do
    system "#{bin}/mfc --version"
  end
end