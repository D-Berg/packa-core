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
function env.set(key, value) end

---@param key string
---@return string?, string?
function env.get(key) end

---@param key string
---@param value string
---@return boolean, string?
function env.append(key, value) end

---Represents a software package with metadata and source verification.
---@class Package
---@field name string
---@field version string
---@field desc string
---@field homepage string
---@field url string Url to source archive
---@field hash string Blake3 hash of source archive
---@field license string
---@field build fun(b: Build)

---@class Build
local b = {}
---Executes a shell command
---@param cmd string
---@param ... string
---@return boolean? success
---@return string? err_msg
function b.run(cmd, ...) end

---This global function will provide the type checking
---@param data Package
---@return Package
function pkg(data) return data end
