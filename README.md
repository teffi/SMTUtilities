# SMTUtilities

If you're tired or bored on creating validation methods for your textfields then SMTUtilities will be of great help.

SMTUtilities is an objective-c utility class for textfield validations.Each methods returns a BOOL value.


## Version
1.1.0

##METHODS
#####Empty fields
```objc
+(BOOL)isEmpty:(UITextField *)field;
```

#####Numerical Fields
```objc
+(BOOL)isNumeric: (UITextField *)field;
```

#####Letter Fields
```objc
+(BOOL)isAlphabets:(UITextField *)field;
```

#####Email Fields
```objc
+(BOOL)isValidEmail:(UITextField *)field;
```
#####iPhone4 Screen check
```objc
+(BOOL)isiPhone4;
```
#####iPhone6 Screen check
```objc
+(BOOL)isiPhone6;
```
#####iOS8 version check
```objc
+(BOOL)isiOS8;
```
#####iOS7 version check
```objc
+(BOOL)isiOS7;
```
#####White spaces trimming
```objc
+(NSString *)trimWhiteSpaces:(NSString *)str;
```

##Change Log - v1.1.0
New Methods
- iphone 4/6 screen checks
- iOS 7 and 8 version checks
- String trimming whitespaces.



### Next Steps

- Add other common validations
- Create Swift counterpart

License
----

MIT

