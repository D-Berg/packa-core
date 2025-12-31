---@meta

---@class Build
---@field os "macos" | "linux"
---@field prefix string
---@field env Environment

---@class Environment
local env = {}
---Sets an environment variable for the duration of the build.
---@param key string
---@param value string
---@return boolean, string?
function env:set(key, value) end

---@class Package
---@field name string
---@field version string
---@field url string
---@field hash string
---@field license string
---@field build fun(b: Build)

---@class Build
local b = {}
---Executes a shell command
---@param cmd string
---@param ... string
---@return boolean? success
---@return string? err_msg
function b:run(cmd, ...) end
