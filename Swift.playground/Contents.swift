//: Playground - noun: a place where people can play

// 自动逃逸闭包
var providers: [() -> String] = []
func providerAppend(provider: @escaping @autoclosure () -> String) {
	providers.append(provider)
}
var customerProviders = ["Barry", "Daniella"]
providerAppend(provider: customerProviders.remove(at: 0))
providerAppend(provider: customerProviders.remove(at: 0))
print("Collected: \(providers.count)")
for eachProvider in providers {
    print("Server \(eachProvider())")
}

// api判断
if #available(iOS 18, *) {
    print("在iOS10执行")
}

/*  枚举  */
