if CommandLine.arguments.count != 3 {
  print("🔴 Usage: CheckPermutation `string1` `string2`")
} else {
  let str1 = CommandLine.arguments[1]
  let str2 = CommandLine.arguments[2]
  print(checkPermutation(str1: str1, str2: str2))
}

