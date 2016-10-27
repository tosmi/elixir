result = with {:ok, file} = File.open('/etc/passwd'),
	      content = IO.read(file, :all),
		:ok = File.close(file),
		[_, uid, gid] <- Regex.run(~r/xxx:.*?:(\d+):(\d+):/, content)
  do
  "Group: #{gid} #{uid}"
end

if result == nil do
  IO.puts "not found"
else
  IO.puts result
end
