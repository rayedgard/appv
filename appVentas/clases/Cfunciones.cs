﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace clases
{
    public class Cfunciones
    {


        public static class Globales
        {

            /// <summary>
            /// MIEMBROS PUBLICOS PARA EL ACCESO DE TODO EL PROYECTO 
            /// </summary>
            public static string criterio;
            public static string nameUser;//---> para los usuarios
            public static int idUsuario;//---> para obtener el id de los usuarios
            public static int  estado;


            public static int privilegio;///2 PARA LOS PRIVILEGIOS DE NOMBRADOS Y CAS// 1 PARA LOS PRIVILEGIOS DE INVERSION // 0 PARA LOS PRIVILEGIOS TOTALES

            //valores para la facrurarion
            public static string ruc="";
            public static string razon="";
            public static string direccion="";

            //para almnacenar 
            public static string valor = "";
            public static string codigo = "";


            //para almacenar temporalmente los valores de cantidad y precio de compra del producto 
            public static double precioCompra=0;
            public static double cantidadCompra =0;


            //para almacenar temporalmente los valores PARA LA VENTA DE PRODUCTOS 
            public static double precioVenta = 0;
            public static int stock = 0;
            public static int stockMinimo = 0;
            public static int idCategoria = 0;
            public static int promocion;
            public static string nroserie;
            public static int idUnidades;

            //PARA LAS REALIZAR EL CALCULO DE LAS VENTAS --- 
            public static double importe;
            public static double pago;
            public static double cambio;



            //public static void Inicializar()
            //{
            //    gbUsuario = "";
            //    gbPerfil = "";
            //}
        }




    }
}
