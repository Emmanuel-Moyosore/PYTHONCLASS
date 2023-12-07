#string formatting
price1=45000
price2=30000
price3=85000
report='I sold two shirt for {}, a shoe for {} and a suit for {}'
print(report.format(price1, price2, price3))
print(f'I sold two shirt for {price2}, a shoe for {price3} and a suit for {price1}')
#string method
word='Python is fun'
print(word.upper())
print(word.lower())
print(word.title())
print(word.capitalize())
print(word.split())

#Data type conversion
num1=int(25.8)
print(num1)#float can be converted to integer.
print(float(num1))# integer can be converted to float.
print(str(num1))# integer can be converted to string
print(str(12.5))# float can be converted to string.
print(int('45'))#string can not be converted to int or float except it is a digit passed as a string

#Input function
#name=input('Enter your name:')
#age=int(input('Pls enter your age:'))#input function serves as prompt for user value

#OPERATORS
#Arithmetic operators
num1=int(input('Enter first number:'))
num2=int(input('Enter second number:'))
print(f'{num1}+{num2}= {num1+num2}')
print(f'{num1}-{num2}= {num1-num2}')
print(f'{num1}*{num2}= {num1*num2}')
print(f'{num1}/{num2}= {num1/num2}')
print(f'{num1}%{num2}= {num1%num2}')
print(f'{num1}//{num2}= {num1//num2}')
print(f'{num1}**{num2}= {num1**num2}')

#Exercise
# Mr bob bought p bags for 500000 and sold each bag at 20000

Costprice=500000
Sellingprice=20000
number_of_bags=Costprice/Sellingprice
profit=(number_of_bags*Sellingprice)-Costprice
print(f''' The number of bags bought is {number_of_bags} and Mr bob"s profit is {profit}''')
