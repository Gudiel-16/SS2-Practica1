from os import system

def numeroMenuConsultas():

    valido = True
    num = 0
    while valido:
        try:
            num = int(input("\nIngrese un numero entero: "))

            if num > 0 and num < 12: 
                valido = False
            else:
                print('\nDebe ingresar un numero enetro del 1 al 11')
        except:
            print('\nError, Debe ingresar un numero entero del 1 al 11')
    
    return num

def getConsulta(num_consulta):
    result = system( "sqlcmd -S DESKTOP-K8BKO2K -i C:\\Users\\Christopher\\Desktop\\sql_practica1\\consulta"+ num_consulta +".sql -o .\\consultas\\consulta"+num_consulta+".txt")
    return result
    
def readFile(num_consulta):
    file = open("consultas//consulta"+num_consulta+".txt", "r")
    lineas = ""
    for x in file:
        lineas += x

    file.close()
    return lineas

def menuConsultas():

    finMenu = True

    while finMenu:

        print ("\n1. Consulta 1")
        print ("2. Consulta 2")
        print ("3. Consulta 3")
        print ("4. Consulta 4")
        print ("5. Consulta 5")
        print ("6. Consulta 6")
        print ("7. Consulta 7")
        print ("8. Consulta 8")
        print ("9. Consulta 9")
        print ("10. Consulta 10")
        print ("11. Salir")

        opcion = numeroMenuConsultas()

        if opcion == 1:
            print('\nCONSULTA 1\n')
            response = getConsulta("1")
            #print(readFile("1"))
        elif opcion == 2:
            print('\nCONSULTA 2\n')
            response = getConsulta("2")
            #print(readFile("2"))
        elif opcion == 3:
            print('\nCONSULTA 3\n')
            response = getConsulta("3")
            #print(readFile("3"))
        elif opcion == 4:
            print('\nCONSULTA 4\n')
            response = getConsulta("4")
            #print(readFile("4"))
        elif opcion == 5:
            print('\nCONSULTA 5\n')
            response = getConsulta("5")
            print(readFile("5"))
        elif opcion == 6:
            print('\nCONSULTA 6\n')
            response = getConsulta("6")
            print(readFile("6"))
        elif opcion == 7:
            print('\nCONSULTA 7\n')
            response = getConsulta("7")
            print(readFile("7"))
        elif opcion == 8:
            print('\nCONSULTA 8\n')
            response = getConsulta("8")
            print(readFile("8"))
        elif opcion == 9:
            print('\nCONSULTA 9\n')
            response = getConsulta("9")
            print(readFile("9"))
        elif opcion == 10:
            print('\nCONSULTA 10\n')
            response = getConsulta("10")
            #print(readFile("10"))
        elif opcion == 11:
            finMenu = False