from os import system
from consultas import menuConsultas

def numeroMenu():

    valido = True
    num = 0
    while valido:
        try:
            num = int(input("\nIngrese un numero entero: "))

            if num > 0 and num < 7: 
                valido = False
            else:
                print('\nDebe ingresar un numero enetro del 1 al 6')
        except:
            print('\nError, Debe ingresar un numero entero del 1 al 6')
    
    return num

def executeOption(name_option):
    result = system( "sqlcmd -S DESKTOP-K8BKO2K -i C:\\Users\\Christopher\\Desktop\\sql_practica1\\"+ name_option +".sql")
    return result

def menu():

    finMenu = True

    while finMenu:

        print ("\n1. Borrar modelo")
        print ("2. Crear modelo")
        print ("3. Extraer Informacicon")
        print ("4. Cargar Informacicon")
        print ("5. Realizar Consultas")
        print ("6. Salir")

        opcion = numeroMenu()

        if opcion == 1:
            print('\nBorrando Modelo...')
            executeOption("1_delete_model")
            print('Modelo Borrado')
        elif opcion == 2:
            print('\nCreando Modelo...')
            executeOption("2_create_model")
            print('Modelo Creado')
        elif opcion == 3:
            print('\nExtrayendo Informacion...')
            executeOption("3_extract_information")
            print('Informacion Extraida')
        elif opcion == 4:
            print('\nCargando Informacion...')
            executeOption("4_load_information")
            print('Informacion cargada')
        elif opcion == 5:
            print('\nRealizar Consultas')
            menuConsultas()
        elif opcion == 6:
            print('\nApp finalizada.')
            finMenu = False

menu()