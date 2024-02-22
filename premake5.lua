IncludeDir = {}
IncludeDir["GLFW"] = "%{wks.location}/external/GLFW/include"
IncludeDir["Glad"] = "%{wks.location}/external/Glad/include"

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

