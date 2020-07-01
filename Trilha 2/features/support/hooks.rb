After do
    shot_file = page.save_screenshot("log/screenshot.png")
    shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
    embed(shot_b64, "image/png", "Screenshot") # Cucumber anexa o screenshot no report
  end
