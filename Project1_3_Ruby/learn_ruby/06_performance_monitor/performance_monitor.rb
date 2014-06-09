def measure(n = 1)
  start_time = Time.now
  n.times { yield }
  end_time = Time.now

  elapsed_time = end_time - start_time
  average_time = elapsed_time / n
end