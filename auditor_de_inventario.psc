Algoritmo auditor_de_inventario
	Definir opcion, totalProductos, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	//----------------------//
	//--|datos_productos|--//
	//----------------------//
	Definir id Como Entero
	Definir producto, codigo, categoria, marca Como Cadena
	Definir cantidadRegistrada, cantidadEncontrada Como Entero
	Definir precioUnitario Como Real
	Definir ubicacion, estado, fechaAuditoria, observacion Como Cadena
	Dimension id[100]
	Dimension producto[100]
	Dimension codigo[100]
	Dimension categoria[100]
	Dimension marca[100]
	Dimension cantidadRegistrada[100]
	Dimension cantidadEncontrada[100]
	Dimension precioUnitario[100]
	Dimension ubicacion[100]
	Dimension estado[100]
	Dimension fechaAuditoria[100]
	Dimension observacion[100]
	//-------------------------//
	//--|variables_estadisticas|--//
	//-------------------------//
	Definir totalCorrectos, totalFaltantes, totalSobrantes Como Entero
	Definir totalBuenEstado, totalDaniados Como Entero
	Definir cantidadTotalRegistrada, cantidadTotalEncontrada Como Entero
	Definir diferenciaTotal Como Entero
	Definir valorTotalInventario Como Real
	Definir mayorDiferencia, menorDiferencia Como Entero
	Definir productoMayorDiferencia, productoMenorDiferencia Como Cadena
	Definir diferencia Como Entero
	totalProductos <- 0
	siguienteID <- 1
	//------------------------------------------//
	//--|menu_principal_auditor_de_inventario|--//
	//------------------------------------------//
	Repetir
		Escribir "menu principal auditor de inventario"
		Escribir "1) registrar producto"
		Escribir "2) editar producto"
		Escribir "3) eliminar producto"
		Escribir "4) buscar producto"
		Escribir "5) listar productos"
		Escribir "6) ver detalles del producto"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//------------------------//
			//--|registrar_producto|--//
			//------------------------//
			1:
				Escribir "registrar producto"
				Si totalProductos >= 100 Entonces
					Escribir "no se pueden registrar mas productos."
				SiNo
					id[totalProductos + 1] <- siguienteID
					siguienteID <- siguienteID + 1
					Escribir "ingrese el nombre del producto:"
					Leer producto[totalProductos + 1]
					Escribir "ingrese el codigo del producto:"
					Leer codigo[totalProductos + 1]
					Escribir "ingrese la categoria:"
					Leer categoria[totalProductos + 1]
					Escribir "ingrese la marca:"
					Leer marca[totalProductos + 1]
					Escribir "ingrese la cantidad registrada:"
					Leer cantidadRegistrada[totalProductos + 1]
					Escribir "ingrese la cantidad encontrada:"
					Leer cantidadEncontrada[totalProductos + 1]
					Escribir "ingrese el precio unitario:"
					Leer precioUnitario[totalProductos + 1]
					Escribir "ingrese la ubicacion:"
					Leer ubicacion[totalProductos + 1]
					Escribir "ingrese el estado (buen estado/daniado):"
					Leer estado[totalProductos + 1]
					Escribir "ingrese la fecha de auditoria:"
					Leer fechaAuditoria[totalProductos + 1]
					Escribir "ingrese una observacion:"
					Leer observacion[totalProductos + 1]
					totalProductos <- totalProductos + 1
					Escribir "producto registrado correctamente."
				FinSi
			//---------------------//
			//--|editar_producto|--//
			//---------------------//
			2:
				Escribir "editar producto"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalProductos Hacer
						Escribir id[i]," | ",producto[i]," | ",codigo[i]," | ",categoria[i]," | ",marca[i]," | ",cantidadRegistrada[i]," | ",cantidadEncontrada[i]," | ",precioUnitario[i]," | ",ubicacion[i]," | ",estado[i]," | ",fechaAuditoria[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id del producto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProductos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "nuevo nombre del producto:"
							Leer producto[i]
							Escribir "nuevo codigo del producto:"
							Leer codigo[i]
							Escribir "nueva categoria:"
							Leer categoria[i]
							Escribir "nueva marca:"
							Leer marca[i]
							Escribir "nueva cantidad registrada:"
							Leer cantidadRegistrada[i]
							Escribir "nueva cantidad encontrada:"
							Leer cantidadEncontrada[i]
							Escribir "nuevo precio unitario:"
							Leer precioUnitario[i]
							Escribir "nueva ubicacion:"
							Leer ubicacion[i]
							Escribir "nuevo estado (buen estado/daniado):"
							Leer estado[i]
							Escribir "nueva fecha de auditoria:"
							Leer fechaAuditoria[i]
							Escribir "nueva observacion:"
							Leer observacion[i]
							Escribir "producto editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un producto con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|eliminar_producto|--//
			//-----------------------//
			3:
				Escribir "eliminar producto"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalProductos Hacer
						Escribir id[i]," | ",producto[i]," | ",codigo[i]," | ",categoria[i]," | ",marca[i]," | ",cantidadRegistrada[i]," | ",cantidadEncontrada[i]," | ",precioUnitario[i]," | ",ubicacion[i]," | ",estado[i]," | ",fechaAuditoria[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id del producto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProductos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalProductos Entonces
								Para j <- i Hasta totalProductos - 1 Hacer
									id[j] <- id[j + 1]
									producto[j] <- producto[j + 1]
									codigo[j] <- codigo[j + 1]
									categoria[j] <- categoria[j + 1]
									marca[j] <- marca[j + 1]
									cantidadRegistrada[j] <- cantidadRegistrada[j + 1]
									cantidadEncontrada[j] <- cantidadEncontrada[j + 1]
									precioUnitario[j] <- precioUnitario[j + 1]
									ubicacion[j] <- ubicacion[j + 1]
									estado[j] <- estado[j + 1]
									fechaAuditoria[j] <- fechaAuditoria[j + 1]
									observacion[j] <- observacion[j + 1]
								FinPara
							FinSi
							totalProductos <- totalProductos - 1
							Escribir "producto eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un producto con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|buscar_producto|--//
			//---------------------//
			4:
				Escribir "buscar producto"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "ingrese el id del producto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProductos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir "id: ",id[i]
							Escribir "producto: ",producto[i]
							Escribir "codigo: ",codigo[i]
							Escribir "categoria: ",categoria[i]
							Escribir "marca: ",marca[i]
							Escribir "cantidad registrada: ",cantidadRegistrada[i]
							Escribir "cantidad encontrada: ",cantidadEncontrada[i]
							Escribir "precio unitario: ",precioUnitario[i]
							Escribir "ubicacion: ",ubicacion[i]
							Escribir "estado: ",estado[i]
							Escribir "fecha de auditoria: ",fechaAuditoria[i]
							Escribir "observacion: ",observacion[i]
							diferencia <- cantidadEncontrada[i] - cantidadRegistrada[i]
							Escribir "diferencia: ",diferencia
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un producto con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|listar_productos|--//
			//----------------------//
			5:
				Escribir "listar productos"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalProductos Hacer
						diferencia <- cantidadEncontrada[i] - cantidadRegistrada[i]
						Escribir id[i]," | ",producto[i]," | registrado: ",cantidadRegistrada[i]," | encontrado: ",cantidadEncontrada[i]," | diferencia: ",diferencia," | ",estado[i]
					FinPara
				FinSi
			//---------------------------//
			//--|ver_detalles_producto|--//
			//---------------------------//
			6:
				Escribir "ver detalles del producto"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "ingrese el id del producto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProductos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							diferencia <- cantidadEncontrada[i] - cantidadRegistrada[i]
							Escribir "detalles del producto"
							Escribir "id: ",id[i]
							Escribir "producto: ",producto[i]
							Escribir "codigo: ",codigo[i]
							Escribir "categoria: ",categoria[i]
							Escribir "marca: ",marca[i]
							Escribir "cantidad registrada: ",cantidadRegistrada[i]
							Escribir "cantidad encontrada: ",cantidadEncontrada[i]
							Escribir "diferencia: ",diferencia
							Escribir "precio unitario: ",precioUnitario[i]
							Escribir "ubicacion: ",ubicacion[i]
							Escribir "estado: ",estado[i]
							Escribir "fecha de auditoria: ",fechaAuditoria[i]
							Escribir "observacion: ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro un producto con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					totalCorrectos <- 0
					totalFaltantes <- 0
					totalSobrantes <- 0
					totalBuenEstado <- 0
					totalDaniados <- 0
					cantidadTotalRegistrada <- 0
					cantidadTotalEncontrada <- 0
					diferenciaTotal <- 0
					valorTotalInventario <- 0
					Para i <- 1 Hasta totalProductos Hacer
						diferencia <- cantidadEncontrada[i] - cantidadRegistrada[i]
						cantidadTotalRegistrada <- cantidadTotalRegistrada + cantidadRegistrada[i]
						cantidadTotalEncontrada <- cantidadTotalEncontrada + cantidadEncontrada[i]
						diferenciaTotal <- diferenciaTotal + diferencia
						valorTotalInventario <- valorTotalInventario + (cantidadRegistrada[i] * precioUnitario[i])
						Si diferencia = 0 Entonces
							totalCorrectos <- totalCorrectos + 1
						FinSi
						Si diferencia < 0 Entonces
							totalFaltantes <- totalFaltantes + 1
						FinSi
						Si diferencia > 0 Entonces
							totalSobrantes <- totalSobrantes + 1
						FinSi
						Si estado[i] = "buen estado" Entonces
							totalBuenEstado <- totalBuenEstado + 1
						FinSi
						Si estado[i] = "daniado" Entonces
							totalDaniados <- totalDaniados + 1
						FinSi
					FinPara
					mayorDiferencia <- cantidadEncontrada[1] - cantidadRegistrada[1]
					menorDiferencia <- mayorDiferencia
					productoMayorDiferencia <- producto[1]
					productoMenorDiferencia <- producto[1]
					Para i <- 1 Hasta totalProductos Hacer
						diferencia <- cantidadEncontrada[i] - cantidadRegistrada[i]
						Si diferencia > mayorDiferencia Entonces
							mayorDiferencia <- diferencia
							productoMayorDiferencia <- producto[i]
						FinSi
						Si diferencia < menorDiferencia Entonces
							menorDiferencia <- diferencia
							productoMenorDiferencia <- producto[i]
						FinSi
					FinPara
					Escribir "estadisticas de auditoria de inventario"
					Escribir "total de productos: ",totalProductos
					Escribir "cantidad registrada: ",cantidadTotalRegistrada
					Escribir "cantidad encontrada: ",cantidadTotalEncontrada
					Escribir "diferencia total: ",diferenciaTotal
					Escribir "valor total del inventario: $",valorTotalInventario
					Escribir "productos sin diferencias: ",totalCorrectos
					Escribir "productos con faltantes: ",totalFaltantes
					Escribir "productos con sobrantes: ",totalSobrantes
					Escribir "productos en buen estado: ",totalBuenEstado
					Escribir "productos daniados: ",totalDaniados
					Escribir "mayor sobrante: ",productoMayorDiferencia
					Escribir "diferencia: ",mayorDiferencia
					Escribir "mayor faltante: ",productoMenorDiferencia
					Escribir "diferencia: ",menorDiferencia
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar auditor de inventario."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo