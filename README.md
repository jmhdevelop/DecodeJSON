# DecodeJSON


[![Status](https://travis-ci.org/jmhdevelop/DecodeJSON.svg?branch=master)](https://travis-ci.org/jmhdevelop/DecodeJSON)
[![Version](https://img.shields.io/cocoapods/v/DecodeJSON.svg?style=flat)](https://cocoapods.org/pods/DecodeJSON)
[![License](https://img.shields.io/cocoapods/l/DecodeJSON.svg?style=flat)](https://cocoapods.org/pods/DecodeJSON)
[![Platform](https://img.shields.io/cocoapods/p/DecodeJSON.svg?style=flat)](https://cocoapods.org/pods/DecodeJSON)
[![codebeat badge](https://codebeat.co/badges/2ab88036-c232-48c0-ade8-10f26b6b049a)](https://codebeat.co/projects/github-com-jmhdevelop-decodejson-master)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

DecodeJSON is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DecodeJSON'
```

## Usage

First you need to create a struct for the response.
```swift
struct BookResponse: Codable {
    let ID: Int
    let Title: String
    let Description: String
    let PageCount: Int
}
```

Also you can created the struct with coding keys to assigning your own names.

```swift
struct BookResponse: Codable {
    let id: Int
    let title: String
    let description: String
    let numberOfPages: Int

    enum CodingKeys : String, CodingKey {
        case id = "ID"
        case title = "Title"
        case description = "Description"
        case numberOfPages = "PageCount"
    }
}
```


To decode a JSON in a request you need can do it like in this example.

```swift
let url = URL(string: "https://fakerestapi.azurewebsites.net/api/Books")!
 
let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
    guard let data = data else { return }
        if let books: [BookResponse] = DecodeJSON.shared.decode(data: data) {
            print(books)
        }
    }
 
task.resume()
 
```

## Author

jmhdevep, jmherrero@jmhdeveloper.com

## License

DecodeJSON is available under the MIT license. See the LICENSE file for more info.
