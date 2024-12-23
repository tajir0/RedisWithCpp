## 项目背景
传统的关系型数据库在处理高并发和大规模数据时，往往面临性能瓶颈。因此，内存型数据库以其读写速度快、时延低的特点适合作为关系型数据库的缓存层。Redis作为一个广泛使用的内存型键值数据库，以其高性能、灵活的数据结构和丰富的功能常被用在系统设计中。

本项目旨在实现一个参考 Redis 的内存型键值数据库，旨在为开发者提供一个轻量级、高效的存储解决方案。通过实现基本的键值存储功能，更好地理解内存型数据库的工作原理，并为后续的功能扩展打下基础。

## 目的

1. **学习与实践**: 通过实现一个简化版的内存型数据库，帮助开发者深入理解数据库的基本原理和数据结构，特别是键值存储的实现方式。

2. **高性能存储**: 提供一个高效的内存型键值存储解决方案，支持快速的数据读写操作，以满足高并发场景下的需求。

3. **灵活的数据结构**: 实现多种数据结构（如字符串、哈希、列表、集合等），使得用户能够根据不同的应用场景选择合适的数据类型。

4. **扩展性**: 设计良好的架构，便于后续功能的扩展和优化，例如持久化、分布式存储等。

通过本项目为开发者提供一个实用的工具，同时也为学习和研究内存型数据库提供参考。

## 编译与运行

1. **编译**
``` sh
$ make
$ ./server
```
2. **get和set**
``` sh
$ ./client asdf
(err) 1 Unknown cmd
$ ./client get asdf
(nil)
$ ./client set k v
(nil)
$ ./client get k
(str) v
$ ./client keys
(arr) len=1
(str) k
(arr) end
$ ./client del k
(int) 1
$ ./client del k
(int) 0
$ ./client keys
(arr) len=0
(arr) end
```
2. **zadd和zscore**
``` sh
$ ./client zadd k 12 v
(int) 12
$ ./client zscore k v 
(dbl) 12
$ ./client zrem k v
(int) 1
$ ./client zscore k v
(nil)
$ ./client zadd k w v
(err) 4 expect fp number
```
3. **pttl和pexpire**
``` sh
$ ./client pttl k 
(int) -1
$ ./client pexpire k 10000
(int) 1
$ ./client pttl k
(int) 2130
$ ./client pttl k
(int) -2
```
## 流程图
![图片](/doc/流程.png "流程")

## 其他
[面试问题](https://github.com/tajir0/RedisWithCpp/blob/master/doc/%E9%9D%A2%E8%AF%95%E9%97%AE%E9%A2%98.md)
