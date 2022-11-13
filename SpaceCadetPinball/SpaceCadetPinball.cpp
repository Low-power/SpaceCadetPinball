// SpaceCadetPinball.cpp : Program execution begins and ends there.

#include "pch.h"
#include "winmain.h"

static int Main(const char *command_line) {
	// TODO: get rid of restart to change resolution.
	int r;
	do {
		r = winmain::WinMain(command_line);
	} while (winmain::RestartRequested());
	return r;
}

#if _WIN32

#include <windows.h>

int APIENTRY WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd)
{
	return Main(lpCmdLine);
}

// fopen to _wfopen adapter, for UTF-8 paths
FILE* fopenu(const char* path, const char* opt)
{
	wchar_t *wideArgs[2] = { NULL };
	for (auto& arg : wideArgs)
	{
		auto src = wideArgs[0] ? opt : path;
		auto length = MultiByteToWideChar(CP_UTF8, 0, src, -1, nullptr, 0);
		arg = new wchar_t[length];
		MultiByteToWideChar(CP_UTF8, 0, src, -1, arg, length);
	}
	FILE *f = _wfopen(wideArgs[0], wideArgs[1]);
	for (auto arg : wideArgs) delete[] arg;
	return f;
}

#else

int main(int argc, char* argv[])
{
	std::string command_line;
	for (int i = 1; i < argc; i++) {
		if(i > 1) command_line += ' ';
		command_line += argv[i];
	}
	return Main(command_line.c_str());
}

#endif
