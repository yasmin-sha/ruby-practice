def benchmark
  start_time = Time.now
  yield
  end_time = Time.now
  end_time - start_time
end

time=benchmark do 
  sleep 0.5
end
  puts "execution time:#{time}"
