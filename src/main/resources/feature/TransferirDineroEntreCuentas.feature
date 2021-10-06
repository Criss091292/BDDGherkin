# new feature
# Tags: optional
# language: es
//**Transferir dinero entre cuentas bancarias**//
Característica: Como usuario de una cuenta bancaria Quiero transferir dinero a otras cuentas  Para realizar pagos a terceros o girar dinero a mis familiares
    Escenario: Se dispone del monto a transferir
        Dado dos cuentas bancarias
        Cuando transfiero saldo de una cuenta a otra
        Y el saldo a transferir es menor o igual al de la cuenta de origen
        Entonces deberia descontar el saldo de la cuenta de origen sumarlo al de la cuenta de destino
        Y notificar que la transferencia fue exitosa

    Escenario: El monto a transferir excede el saldo de la cuenta de origen
        Dado dos cuentas bancarias
        Cuando transfiero saldo de una cuenta a otra
        Y el saldo a transferir es mayor al de la cuenta de origen
        Entonces deberia notificar que la operacion fallo porque el monto a trasladar no debe exceder el saldo de la cuenta de origen


