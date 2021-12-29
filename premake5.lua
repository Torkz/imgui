--premake5.lua

project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("bin/" .. output_dir .. "/%{prj.name}")
	objdir ("bin-int/" .. output_dir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.cpp",
		"imgui.h",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h"
	}
		
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		symbols "on"
		runtime "Debug"

	filter "configurations:Release"
		optimize "on"
		runtime "Release"
