Pry.config.pager = false

def pbcopy(s)
  Open3.pipeline_w("reattach-to-user-namespace pbcopy") { |stdout, wait_threads| stdout.write(s) }
end
