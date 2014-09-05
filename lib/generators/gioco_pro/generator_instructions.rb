# encoding: utf-8
module GeneratorInstructions
	def instructions
		puts <<-EOS

=======================================================

Gioco Pro successfully installed.

1. You need to setup an environment variable (GIOCOPRO_TOKEN) for your Application Token.
2. You will find your token on http://app.gioco.pro/ on Manage > Application Token

For usage and more infomation go to the documentation:
https://github.com/giocoapp/giocopro

=======================================================

		EOS
	end
end