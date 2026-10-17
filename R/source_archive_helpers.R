# Shared, base-R helpers for finding files inside official source ZIP archives.
# These functions do not download source data or assume a fixed ZIP folder name.
choose_zip_member <- function(entries, filename) {
  if (!length(entries) || !length(filename) || length(filename)!=1L)
    stop("ZIP listing and a single target filename are required")
  entries <- gsub("\\\\", "/", as.character(entries))
  target <- tolower(filename)
  names_only <- tolower(basename(entries))
  candidates <- entries[names_only == target & !grepl("/$", entries)]
  if (length(candidates) != 1L) {
    stop("Expected one ZIP member named ",filename,"; found ",length(candidates),
         ". Check the archive edition and ZIP listing.")
  }
  if (startsWith(candidates, "/") || grepl("(^|/)\\.\\.(/|$)",candidates))
    stop("Unsafe archive member path")
  candidates
}
find_zip_member <- function(archive, filename) {
  if (!file.exists(archive)) stop("Missing ZIP archive: ", archive)
  members <- utils::unzip(archive,list=TRUE)$Name
  choose_zip_member(members, filename)
}
extract_zip_member <- function(archive,member,directory) {
  paths <- utils::unzip(archive,files=member,exdir=directory)
  expected <- file.path(directory, member)
  if (length(paths) != 1L || !file.exists(expected))
    stop("Cannot extract member: ",member)
  expected
}
