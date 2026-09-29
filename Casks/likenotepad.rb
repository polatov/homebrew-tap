cask "likenotepad" do
  version "1.0.0"
  sha256 "ab052acb713bbd820001e7b10ac54e6183f750dfc50faf1805840c3694ce3388"

  url "https://github.com/polatov/likenotepad/releases/download/v#{version}/LikeNotepad.exe_#{version}_universal.dmg"
  name "LikeNotepad.exe"
  desc "Plain text editor in the spirit of Windows Notepad"
  homepage "https://github.com/polatov/likenotepad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "LikeNotepad.exe.app"

  zap trash: [
    "~/Library/Application Support/me.polatov.notepad",
    "~/Library/Caches/me.polatov.notepad",
    "~/Library/Preferences/me.polatov.notepad.plist",
    "~/Library/WebKit/me.polatov.notepad",
  ]

  caveats <<~EOS
    LikeNotepad.exe is not signed with an Apple Developer ID yet, so macOS blocks
    the first launch. Open System Settings → Privacy & Security and click
    "Open Anyway" next to the message about LikeNotepad.exe (needed once).
  EOS
end
