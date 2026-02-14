# binaryloader-network

Async/await network abstraction layer built on Moya for iOS, distributed as a CocoaPods pod.

## Components

- **NetworkProvider**: Generic wrapper around MoyaProvider with sync and async methods
- **NetworkTarget**: Protocol extending Moya's TargetType
- **NetworkTimeoutPlugin**: Configurable request timeout plugin (default 10s)
- **MoyaProvider+Async**: Extension enabling async/await syntax
- **Moya+Wrapping**: Type aliases for cleaner public API

## Requirements

- iOS 13+
- Swift 5.6+

## Installation

```ruby
source 'https://github.com/binaryloader/cocoapods-specs.git'

pod 'BinaryloaderNetwork'
```

## Related Repositories

- https://github.com/binaryloader/synstagram-app
- https://github.com/binaryloader/cocoapods-specs

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
