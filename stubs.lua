---@meta

---@class Build
---@field arch "aarch64" | "x86_64"
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
---The core logic for compiling and installing the package.
---
---This function is executed after the source has been downloaded and
---extracted into a temporary directory. The working directory is
---automatically set to the source root.
---
---### Typical Steps:
---1. Set environment variables via `b.env:set()`
---2. Run configuration scripts (e.g., `./configure`)
---3. Run build tools (e.g., `make`)
---4. Install files into `b.prefix`
---@field build fun(b: Build)

---@class Build
local b = {}
---Executes a shell command
---@param cmd string
---@param ... string
---@return boolean? success
---@return string? err_msg
function b:run(cmd, ...) end
