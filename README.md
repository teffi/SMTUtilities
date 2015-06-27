# SMTUtilities

If you're tired or bored on creating validation methods for your textfields then SMTUtilities will be of great help.

SMTUtilities is an objective-c utility class for textfield validations.Each methods returns a BOOL value.


## Version
1.0.0

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


### Next Steps

- Add iphone screen checking
- Add iOS version checking
- Add other common validations
- Create Swift counterpart

License
----

MIT

