project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    targetdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "*.h",
        "*.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"


