#ZAPATERIA:Escribir una función que aplique un descuento a un precio y otra que aplique el IVA a un precio

def aplicacion_descuento(cantidad,precio, descuento):
    if cantidad >= 10:
        return precio - precio * descuento/100
    if cantidad <10:
        return precio
def  aplicacion_iva(cantidad,precio,IVA):
    if cantidad <= 20:
        return precio + precio * IVA/100
    if cantidad >20:
        return precio

assert  aplicacion_descuento(10,5000,25)==3750.0
assert  aplicacion_descuento(9,5000,20)==5000
assert  aplicacion_iva(20,4000,19)==4760.0
assert  aplicacion_iva(30,4000,19)==4000
print(f"el precio por cada par de zapatos es de: {aplicacion_descuento(10,5000,25)}")
print(f"el precio por cada par de zapatos es de: {aplicacion_iva(30,4000,19)}")


#--------------------------------------------------------------------------------------------------------------------------------------------------------
#EJERCICIO 2 CYBERSEGURIDAD
contraseña=input("Ingrese una contraseña la cual desea saber si es segura o no : ") #el usuario ingresa la contraseña
def seg_nseg(contraseña): #se crea la funcion
    if len(contraseña) >= 10: #usamos el "len" para que nos diga la cantidad de caracteres de uan letra y se le esta diciendo que dicha cantidad debe ser mayor o igual que 10
        cantidad= True  #si es mayor que 10 , pone que la cantidad es TRUE , como quein dice cumple la validacion
    else:
        cantidad=False
        print("No cumple con la cantidad de caracteres solicitados") #si no , imprime el mensaje

    for i in range(len(contraseña)): #un bucle que recorra el condicinal asigando debajo de la funcion
        if contraseña[i].isupper(): #la contraseña ingresada por el usuario entra en el bucle y dbebe cumplir este condicional...
            mayuscula=True  #el condiconal anterior sirve para decir que la contraseña que recorre el bucle en la variable "i" is.upper osea si es verdadera o falsa a la hora de ser mayuscula
        else:
            mayuscula=False #si ninguna es mayuscula es falso
        if contraseña[i].isnumeric(): #hace lo mismo que la anterior a diferencia de que el is.numeric sirve para ver si tiene algun numero la contraseña
            numeros=True
        else:
            numeros=False
    if cantidad==True:
        return True
    else:
        return False
    if mayuscula==True:
        return True
    else:
        return False
    if numeros==True:
        return True
    else:
        return False
                #en tod0 este proceso se realiza para verificar si cantidad,mayuscula y numeros son verdaderos o falsos
segura_Nsegura=seg_nseg(contraseña) #de tal forma que dicha informacion mencionada anteriormente se guarda en esta variable
if segura_Nsegura: #y al final se evalua de tal forma que si cantidad,mayuscula y numeros son verdaderos(o gran parte d estos)
    print("la contraseña es segura") #imprime que es seguro
else: #si no es asi
    print("la contraseña no es segura, debe contener almenos 1 mayuscula  y debe contener numeros")#muestra este mensaje
#--------------------------------------------------------------------------------------------------------------------------
import math

vector_x=int(input("ingrese el valor del vector en X: "))
vector_y=int(input("ingrese el valor del vector en Y: "))
vector_z=int(input("ingrese el valor del vector en Z: "))
angulo_en_x=int(input("ingrese el angulo del vector x: "))
angulo_en_y=int(input("ingrese el angulo del vector y: "))
angulo_en_z=int(input("ingrese el angulo del vector z: "))
def componente_vector(vector_x,vector_y,vector_z):
    componentx=vector_x*(math.cos(angulo_en_x))
    componenty=vector_y*(math.cos(angulo_en_y))
    componentz=vector_z*(math.cos(angulo_en_z))
    return componentx,componenty,componentz
def component_vector(vector_x,vector_y,vector_z):
    componenTX=(vector_x*math.sin(angulo_en_x))
    componenTY=(vector_y*math.sin(angulo_en_y))
    componenTZ=(vector_z*math.sin(angulo_en_z))

    return componenTX,componenTZ,componenTY
print((componente_vector(vector_x,vector_y,vector_z)),"con respecto al eje X")
print((component_vector(vector_x,vector_y,vector_z)),"con respecto al eje Y")
