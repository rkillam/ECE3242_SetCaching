with open("out.txt", "w") as f:
	for a, b in zip(range(1, 401), range(400, 0, -1)):
		f.write("{} - {} = {}\n".format(a, b, a-b))