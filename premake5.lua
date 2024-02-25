IncludeDir = {}
IncludeDir["GLFW"] = "%{wks.location}/external/GLFW/include"
IncludeDir["Glad"] = "%{wks.location}/external/Glad/include"
IncludeDir["stb"] = "%{wks.location}/external/stb"
IncludeDir["glm"] = "%{wks.location}/external/glm"



LibraryDir = {}
LibraryDir["GLFW"]="%{wks.location}/external/GLFW/lib"

Library = {}
Library["GLFW"] = "%{LibraryDir.GLFW}/glfw3.lib"



workspace "Kangs"
	architecture "x86_64"
	startproject "Sample001"

	configurations
	{
		"Debug"
	}



outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "Sample001"
include "Sample002"
include "Sample003"
include "Sample004"
include "Sample005"
include "Sample006"
include "Sample007"
include "Sample008"
