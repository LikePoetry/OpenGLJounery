project "Sample004"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"**.h",
		"**.cpp",
		"../external/glad/src/glad.c"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS",
		"GLFW_INCLUDE_NONE"
	}

	includedirs
	{
		"%{IncludeDir.GLFW}",
		"%{IncludeDir.Glad}",
	}

	libdirs
	{
		"%{LibraryDir.GLFW}",
	}

	links
	{
		"opengl32.lib",
		"%{Library.GLFW}",
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
