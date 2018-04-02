module SubSystemsHelper

	def detect_laneline
		# system("g++ -std=c++11 main.cpp `pkg-config --libs --cflags opencv` -o source")
		system('./laneline app/assets/videos/solidWhiteRight.mp4')
		#exec(filename)
	end

end
