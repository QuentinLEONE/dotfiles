function pretty-json
	cat $argv[1] | python -m json.tool
end
