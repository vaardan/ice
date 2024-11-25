export PATH=$HOME/go/bin:$PATH

case "$(uname -s)" in

Darwin)
	export PATH=/opt/homebrew/bin:$HOME/google-cloud-sdk/bin:$PATH
	;;

Linux)
	export PATH=$HOME/.local/bin:$PATH
	umask 027
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	;;
*)
	;;
esac
