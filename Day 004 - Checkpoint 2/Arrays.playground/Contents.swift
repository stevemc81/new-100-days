import Cocoa

// Create an array (including a duplicate)
let albums = ["Pablo Honey", "The Bends", "OK Computer", "Pablo Honey"]

// Print the number of items in the array
print("There are \(albums.count) albums in the array.")

// Convert array to set by passing the array into a set constant
let albumsSet = Set(albums)

//Print the number of items in the set
print("There are \(albumsSet.count) albums in the set.")
