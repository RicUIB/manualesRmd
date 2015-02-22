# Contenido

Rápida introducción a RStudio y a Rmarkdown
==================================================

Para empezar
--------------------------------------------------------

Antes de empezar lo que tenéis que hacer es instalar en vuestro ordenador personal:

* Una [versión reciente de R](http://cran.es.r-project.org/). 
* La [última versión de Rstudio Desktop v0.98.1073](http://www.rstudio.com/products/rstudio/download/)
* Si queréis todas las funcionalidades deberéis instalar algunos programas adicionales como [TeX/LaTeX](http://latex-project.org/ftp.html).
* Los demás programas necesarios suelen estar instalados en un ordenador personal.

Si ya teníais una versión de R o de Rstudio debéis actualizarla. Algunos de los programas que utilizaremos son muy recientes y sólo se instalaran (en particular Rmarkdown) si os actualizáis a una versión de Rstudio Desktop >= v0.98.1073.

Rstudio básico
--------------------------------------------------------

Los autores de [RStudio](http://www.rstudio.com/), entre otras cosas, nos proporcionan el programa RStudio Desktop que es un entorno de desarrollo integrado (*IDE*).  Es decir es un entorno de programación que consiste en un editor de código, utilidades de compilación (ejecución de código), etc. Vamos que es la más exitosa interfaz gráfica  de usuario (*GUI*) que nos permite trabajar  de forma cómoda con R. 

Además dispone de una serie de utilidades para la generación de informes de una forma ágil y sencilla.

En en la propia web de Rstudio tenéis unos fantásticos manuales sobre esta aplicación.

Aquí explicamos lo más básico, lo demás lo aprenderéis de forma intuitiva o leyendo las lecciones del cursos, los manuales y consultando con los
compañeros en los foros.


Esta es, posiblemente, la primera vista de RStudio

![alt text](figures/RStudioInicio1.png)

En el menú File podéis abrir un R Script (y entre otras cosas un fichero de Rmarkdown)  como se ve en el siguiente gráfico

![Menu Inicio1](figures/Menu_Inicio1.png)

La situación después de abrir  un R Script es la siguiente


![Rscripy1](figures/RStudio_RScript1.png)

















Rmarkdown básico
--------------------------------------------------------
Para lo que queremos que aprendáis este curso el *Markdown Quick Reference* es suficiente. Pero os tenemos que ayudar un poco más con las fórmulas matemáticas, el formato que se puede dar a
las *chunks* de R.


Fórmulas matemáticas en R markdown <a name="dos"/>
--------------------------------------------------------

La manera de introducir fórmulas matemáticas en `R Markdown` sigue una sintaxis similar a la de del sistema de composición de textos científicos LaTeX. Si habéis utilizado Moodle
seguramente habréis visto  utilizar a algunos alumnos y profesores esta menera de escribir en fórmulas. De hecho esta capacidad la tiene Moodle pues tiene activado su propio lenguaje markdown.

No tiene ningún misterio. Solo tenemos que introducir un código que representa la fórmula de dos formas:

1. Para las fórmulas o ecuaciones en una misma línea (*inline equations*) se pone el código entre dos dobles dólares: `$código$`
2. Para las fórmulas o ecuaciones entre líneas  (*display equations*) se pone el código entre dos dólares: `$$código$$` 


A continuación se muestran algunos ejemplos de código:

## Fórmulas<a name="dos.uno"/>

__Letras griegas, símbolos y acentos matemáticos__

* Código: `$\mu, \beta, \lambda, \sigma, \Sigma$`
 * Salida:  $\mu,\beta,\lambda,\sigma,  \Sigma$
* Código: `$\tilde{S}, \overline{x},  \overline{X}, \hat{p}$`
 * Salida:   $\tilde{S}, \overline{x},  \overline{X}, \hat{p}$
* Código: `$\infty, -\infty,  +\infty, \pm\infty$`
 * Salida:   $\infty, -\infty,  +\infty, \pm\infty$



Subíndices, superíndices, comparaciones:

* Código: `$x_{i}$`
 * Salida:  $x_{i}$
* Código: `$x^{25}$`
 * Salida:   $x^{25}$
* Código: `$x_{i j}$`
 * Salida:  $x_{i j}$
* Código: `$x^{2\cdot \alpha}, \tilde{S}^2,\sqrt{x}$`
 * Salida:  $x^{2\cdot \alpha}, \tilde{S}^2, \sqrt{x}$
* Código: `$\mu=\mu_{0}$`
 * Salida:  $\mu=\mu_{0}$
* Código: `$3.141516\approx 3.14$`
 * Salida:  $3.141516\approx 3.14$
* Código: `$\mu\neq \mu_{0}$`
 * Salida:  $\mu\neq \mu_{0}$
* Código: `$\mu > \mu_{0}, \mu\geq \mu_{0}$`
 * Salida:  $\mu > \mu_{0}, \mu\geq \mu_{0}$
* Código: `$\mu < \mu_{0}, \mu\leq \mu_{0}$`
 * Salida:  $\mu < \mu_{0}, \mu\leq \mu_{0}$

__Fracciones__
* Código: `$\frac{\alpha}{2}$`
 * Salida:  $\frac{\alpha}{2}$
* Código: `$z_{1-\frac{\alpha}{2}}, 8^{\frac{1}{3}}$`
 * Salida: $z_{1-\frac{\alpha}{2}}, 8^{\frac{1}{3}}$
* Código: `$\frac{\tilde{S}}{\sqrt{n}}$`
 * Salida: $\frac{\tilde{S}}{\sqrt{n}}$

__Paréntesis, corchetes y llaves__:

* Simples. Código: `$(a,b); ]a,b[; \{a,b\}$`
 * Salida:  $(a,b); ]a,b[; \{a,b\}$
* Que se adaptan al tamaño `\left(\right)`,`\left]\right]`... 

Código: 
 
```
$\left[\overline{X} -z_{1-\frac{\alpha}{2}} \frac{\sigma}{\sqrt{n}}, \overline{X}+z_{1-\frac{\alpha}{2}}\frac{\sigma}{\sqrt{n}}
\right]$
```
Salida: 
  
$$\left[\overline{X} -z_{1-\frac{\alpha}{2}} \frac{\sigma}{\sqrt{n}}, \overline{X}+z_{1-\frac{\alpha}{2}}\frac{\sigma}{\sqrt{n}}
\right]$$

## Matrices <a name="dos.dos"/>
Las matrices se definen empezando con `\begin{array}{lcr}` y acabando con `\end{array}`. La letras `lcr` entre llaves indican
tanto el número de columnas como si se alinean a izquierda (**l**eft), derecha (**r**ight) o quedan centradas (**c**enter). Entre el `\begin{array}{lcl}` y el `\end{array}` se introducen por filas los valores de la matriz separados por el símbolo `&` y el cambio de fila se indica con `\\`. En principio las matrices contienen fórmulas. Si queremos introducir texto en una fórmula tenemos que crear una caja de texto con la instrucción `\mbox{ pon aquí tu texto}` (`mbox` es el la abreviatura de *make a box*)


```
$
\left(
\begin{array}{ll}
123 & 4 \\
1   & 234
\end{array}
\right)
$
```


Salida:

$$
\left(
\begin{array}{ll}
123 & 4 \\
1   & 234
\end{array}
\right)
$$


```
$
\left\{
\begin{array}{ll}
123 & 4 \\
1   & 234\mbox{ dato atípico}
\end{array}
\right\}
$

```
Salida:

$$
\left\{
\begin{array}{ll}
123 & 4  \\
1   & 234 \mbox{ dato atípico}
\end{array}
\right\}
$$

Si queremos eliminar una llave del lado derecho hay que escribir 
```
\left\{\right.
```
*Notad que el punto de* `\right.` es el que indica se tiene que omitir la llave (o paréntesis o corchete) derecha. Por ejemplo
```
$$
\left\{
\begin{array}{ll}
123 & 4  \\
1   & 234 \mbox{ dato atípico}
\end{array}
\right.
$$
```
Salida:

$$
\left\{
\begin{array}{ll}
123 & 4  \\
1   & 234 \mbox{ dato atípico}
\end{array}
\right.
$$


## Contrastes de hipótesis <a name="dos.tres"/>
Ahora unas plantillas ejemplo para escribir los contrastes de hipótesis:


En la misma línea que el texto. 

* Código:
Contrastaremos la hipótesis nula `$H_{0}: \mu=\mu_0$` contra la alternativa bilateral `$H_{1}: \mu\neq\mu_0$`. 

 * Salida:
Contrastaremos la hipótesis nula $H_{0}: \mu=\mu_0$ contra la alternativa bilateral $H_{1}: \mu\neq\mu_0$. 

Con el modo *fórmulas entre líneas*

Código:
Vamos a realizar el siguiente contraste
```
$$
\left\{
\begin{array}{ll}
H_{0}: &  \mu=\mu_0\\
H_{1}: & \mu\neq\mu_0
\end{array}
\right.
$$
```
Salida:

Vamos a realizar el siguiente contraste

$$
\left\{
\begin{array}{ll}
H_{0}: &  \mu=\mu_0\\
H_{1}: & \mu\neq\mu_0
\end{array}
\right.
$$



Parámetros de las *chunks* de R <a name="indice"/>
--------------------------------------------------------
Sabemos que las *chunks* de R se indican 

```

```r
x=1+1  
x 
```

```
## [1] 2
```
```

La parte entre  llaves que empieza por r puede contener diversos parámetros que son opcionales. Por ejemplo

&#96;&#96;&#96;

```r
x=1+1  
x
```
&#96;&#96;&#96;

NUEVO
</p>
<pre class="code"><code>```{r chunkLabel}
# R code
```</code></pre>
<p>

La primera es una etiqueta o nombre que tendrá la *chunk*, y está formada por un blanco que lo separa de la r seguido por una cadena de caracteres sin blancos, las demás opciones viene separadas por comas. Si no se desea poner etiqueta y sí opciones se pone &#96;&#96;&#96;{r , opciones}.

* La opción `echo`  es lógica e indica si se muestra (`TRUE` que es valor por defecto) o no (`FALSE`) el código fuente de R. 
* La opción `results` a la que podemos asignar: 
  * El valor 'markup' que es la opción por defecto y muestra los resultados en el documento
  * El valor 'hide' que no muestra los resultados.
  * Dispone de otros valores que no comentamos.
 
Los siguientes ejemplos ilustran el comportamiento de estas opciones

La opción por defecto es la que **muestra todo**, tanto el código como los  resultados.

&#96;&#96;&#96;{r todo_se_ve, echo=TRUE,results='markup'}`  
x=1+1  
x  
&#96;&#96;&#96;


```r
x=1+1
x
```

```
## [1] 2
```

Para que se vea **solamente el código**

&#96;&#96;&#96;{r solo_codigo, echo=TRUE,results='hide'}  
x=1+1  
x  
&#96;&#96;&#96; 


```r
x=1+1
x
```


Para que se vean *solamente los resultados* y no el código

&#96;&#96;&#96;{r solo_resultados, echo=FALSE,results='markup'}  
x=1+1  
x  
&#96;&#96;&#96; 


```
## [1] 2
```

Para que *no se vea nada*, ni el resultado ni el código

&#96;&#96;&#96;{r no_se_ve_nada, echo=FALSE,results='hide'}  
x=1+1  
x  
&#96;&#96;&#96; 



Y como se ve no se ve nada:-)

Las *chunks* en modo línea <a name="cuatro"/>
------------------------------------------------------------------

Las *chunks* que hemos visto hasta ahora no permiten introducir resultados dentro de una línea de texto. La sintaxis de Rmarkdown para insertar resultados de código en una línea es 
&#96;r código &#96;.

Por ejemplo la  **entrada** 

El cubo de dos  es   &#96;r 2^3  &#96;. O lo que es lo mismo 
`$2^3$=`  &#96;r 2^3  &#96;

produce la **salida**

El cubo de dos es 8. O lo que es lo mismo 
$2^3$=8

Veamos un ejemplo más práctico. Nos dan una muestra y nos piden calcular la media, la varianza, la desviación típica y el tamaño muestral. Primero cargamos los datos y hacemos los cálculos con una *chunk*


```r
muestra=c(1,2,3,NA,2.8,3.1,4.9)
muestra
```

```
## [1] 1.0 2.0 3.0  NA 2.8 3.1 4.9
```

```r
media=mean(muestra,na.rm=TRUE)
media
```

```
## [1] 2.8
```

```r
var=var(muestra,na.rm=TRUE)
var
```

```
## [1] 1.684
```

```r
desv.tipica=sd(muestra,na.rm=TRUE)
desv.tipica
```

```
## [1] 1.29769
```

```r
n=length(na.omit(muestra))
n
```

```
## [1] 6
```

El siguiente **código de entrada** 

```r
La muestra es de tamaño $n$=`r n`, su media es $\overline{x}$ =`r media`,
su varianza es $\tilde{s}\^2$=`r var` y su desviación típica es  $\tilde{s}$=`r desv.tipica`.
```

produce la **salida**

La muestra es de tamaño $n$=6, su media es $\overline{x}$=2.8,
su varianza es $\tilde{s}^2$=1.684 y su desviación típica es $\tilde{s}$=1.2976903.


Con esto terminamos  esta pequeña introducción de algunos pequeños aspectos más avanzados de Rmarkdown. En futuras lecciones y talleres iremos avanzando en otros aspectos. Más adelante, de momento no perdáis el tiempo, daremos referencias a manuales avanzados.


Presentación de tablas de datos
--------------------------------------------------------------

Para prsentar de forma adecuada tablas de datos con R existen diversos procedimientos.

Uno de los más sencillos es utilizar la librería `xtable Esta librería convierte tablas de datos y data frames a html y  LaTeX.

En primer lugar hay que instalar la librería y cargarla con


```r
require("xtable")
```

```
## Loading required package: xtable
```

```
## Warning: package 'xtable' was built under R version 3.1.2
```


Ahora para poder ver un ejemlo hacemos un data frames con las  estadśiticas básicas del  conjunto de datos iris


```r
medias_por_especie=aggregate(. ~ Species, data = iris, mean)
medias_por_especie
```

```
##      Species Sepal.Length Sepal.Width Petal.Length Petal.Width
## 1     setosa        5.006       3.428        1.462       0.246
## 2 versicolor        5.936       2.770        4.260       1.326
## 3  virginica        6.588       2.974        5.552       2.026
```

Ahora vemos cómo podemos escribir la tabla de forma decorada.


```r
tabla=xtable(medias_por_especie)
caption="Medias de las longitudes y anchuras de pétalos y sépalos de las tres especies"
print(tabla,type="html",digits=2)
```

<!-- html table generated in R 3.1.0 by xtable 1.7-4 package -->
<!-- Tue Feb  3 08:36:00 2015 -->
<table border=1>
<tr> <th>  </th> <th> Species </th> <th> Sepal.Length </th> <th> Sepal.Width </th> <th> Petal.Length </th> <th> Petal.Width </th>  </tr>
  <tr> <td align="right"> 1 </td> <td> setosa </td> <td align="right"> 5.01 </td> <td align="right"> 3.43 </td> <td align="right"> 1.46 </td> <td align="right"> 0.25 </td> </tr>
  <tr> <td align="right"> 2 </td> <td> versicolor </td> <td align="right"> 5.94 </td> <td align="right"> 2.77 </td> <td align="right"> 4.26 </td> <td align="right"> 1.33 </td> </tr>
  <tr> <td align="right"> 3 </td> <td> virginica </td> <td align="right"> 6.59 </td> <td align="right"> 2.97 </td> <td align="right"> 5.55 </td> <td align="right"> 2.03 </td> </tr>
   </table>


```
## Warning: package 'pander' was built under R version 3.1.2
```

|          &nbsp;           |  mpg  |  cyl  |  disp  |  hp  |  drat  |
|:-------------------------:|:-----:|:-----:|:------:|:----:|:------:|
|       **Mazda RX4**       |  21   |   6   |  160   | 110  |  3.9   |
|     **Mazda RX4 Wag**     |  21   |   6   |  160   | 110  |  3.9   |
|      **Datsun 710**       | 22.8  |   4   |  108   |  93  |  3.85  |
|    **Hornet 4 Drive**     | 21.4  |   6   |  258   | 110  |  3.08  |
|   **Hornet Sportabout**   | 18.7  |   8   |  360   | 175  |  3.15  |
|        **Valiant**        | 18.1  |   6   |  225   | 105  |  2.76  |
|      **Duster 360**       | 14.3  |   8   |  360   | 245  |  3.21  |
|       **Merc 240D**       | 24.4  |   4   | 146.7  |  62  |  3.69  |
|       **Merc 230**        | 22.8  |   4   | 140.8  |  95  |  3.92  |
|       **Merc 280**        | 19.2  |   6   | 167.6  | 123  |  3.92  |
|       **Merc 280C**       | 17.8  |   6   | 167.6  | 123  |  3.92  |
|      **Merc 450SE**       | 16.4  |   8   | 275.8  | 180  |  3.07  |
|      **Merc 450SL**       | 17.3  |   8   | 275.8  | 180  |  3.07  |
|      **Merc 450SLC**      | 15.2  |   8   | 275.8  | 180  |  3.07  |
|  **Cadillac Fleetwood**   | 10.4  |   8   |  472   | 205  |  2.93  |
|  **Lincoln Continental**  | 10.4  |   8   |  460   | 215  |   3    |
|   **Chrysler Imperial**   | 14.7  |   8   |  440   | 230  |  3.23  |
|       **Fiat 128**        | 32.4  |   4   |  78.7  |  66  |  4.08  |
|      **Honda Civic**      | 30.4  |   4   |  75.7  |  52  |  4.93  |
|    **Toyota Corolla**     | 33.9  |   4   |  71.1  |  65  |  4.22  |
|     **Toyota Corona**     | 21.5  |   4   | 120.1  |  97  |  3.7   |
|   **Dodge Challenger**    | 15.5  |   8   |  318   | 150  |  2.76  |
|      **AMC Javelin**      | 15.2  |   8   |  304   | 150  |  3.15  |
|      **Camaro Z28**       | 13.3  |   8   |  350   | 245  |  3.73  |
|   **Pontiac Firebird**    | 19.2  |   8   |  400   | 175  |  3.08  |
|       **Fiat X1-9**       | 27.3  |   4   |   79   |  66  |  4.08  |
|     **Porsche 914-2**     |  26   |   4   | 120.3  |  91  |  4.43  |
|     **Lotus Europa**      | 30.4  |   4   |  95.1  | 113  |  3.77  |
|    **Ford Pantera L**     | 15.8  |   8   |  351   | 264  |  4.22  |
|     **Ferrari Dino**      | 19.7  |   6   |  145   | 175  |  3.62  |
|     **Maserati Bora**     |  15   |   8   |  301   | 335  |  3.54  |
|      **Volvo 142E**       | 21.4  |   4   |  121   | 109  |  4.11  |

Table: Table continues below

 

|          &nbsp;           |  wt   |  qsec  |  vs  |  am  |  gear  |
|:-------------------------:|:-----:|:------:|:----:|:----:|:------:|
|       **Mazda RX4**       | 2.62  | 16.46  |  0   |  1   |   4    |
|     **Mazda RX4 Wag**     | 2.875 | 17.02  |  0   |  1   |   4    |
|      **Datsun 710**       | 2.32  | 18.61  |  1   |  1   |   4    |
|    **Hornet 4 Drive**     | 3.215 | 19.44  |  1   |  0   |   3    |
|   **Hornet Sportabout**   | 3.44  | 17.02  |  0   |  0   |   3    |
|        **Valiant**        | 3.46  | 20.22  |  1   |  0   |   3    |
|      **Duster 360**       | 3.57  | 15.84  |  0   |  0   |   3    |
|       **Merc 240D**       | 3.19  |   20   |  1   |  0   |   4    |
|       **Merc 230**        | 3.15  |  22.9  |  1   |  0   |   4    |
|       **Merc 280**        | 3.44  |  18.3  |  1   |  0   |   4    |
|       **Merc 280C**       | 3.44  |  18.9  |  1   |  0   |   4    |
|      **Merc 450SE**       | 4.07  |  17.4  |  0   |  0   |   3    |
|      **Merc 450SL**       | 3.73  |  17.6  |  0   |  0   |   3    |
|      **Merc 450SLC**      | 3.78  |   18   |  0   |  0   |   3    |
|  **Cadillac Fleetwood**   | 5.25  | 17.98  |  0   |  0   |   3    |
|  **Lincoln Continental**  | 5.424 | 17.82  |  0   |  0   |   3    |
|   **Chrysler Imperial**   | 5.345 | 17.42  |  0   |  0   |   3    |
|       **Fiat 128**        |  2.2  | 19.47  |  1   |  1   |   4    |
|      **Honda Civic**      | 1.615 | 18.52  |  1   |  1   |   4    |
|    **Toyota Corolla**     | 1.835 |  19.9  |  1   |  1   |   4    |
|     **Toyota Corona**     | 2.465 | 20.01  |  1   |  0   |   3    |
|   **Dodge Challenger**    | 3.52  | 16.87  |  0   |  0   |   3    |
|      **AMC Javelin**      | 3.435 |  17.3  |  0   |  0   |   3    |
|      **Camaro Z28**       | 3.84  | 15.41  |  0   |  0   |   3    |
|   **Pontiac Firebird**    | 3.845 | 17.05  |  0   |  0   |   3    |
|       **Fiat X1-9**       | 1.935 |  18.9  |  1   |  1   |   4    |
|     **Porsche 914-2**     | 2.14  |  16.7  |  0   |  1   |   5    |
|     **Lotus Europa**      | 1.513 |  16.9  |  1   |  1   |   5    |
|    **Ford Pantera L**     | 3.17  |  14.5  |  0   |  1   |   5    |
|     **Ferrari Dino**      | 2.77  |  15.5  |  0   |  1   |   5    |
|     **Maserati Bora**     | 3.57  |  14.6  |  0   |  1   |   5    |
|      **Volvo 142E**       | 2.78  |  18.6  |  1   |  1   |   4    |

Table: Table continues below

 

|          &nbsp;           |  carb  |
|:-------------------------:|:------:|
|       **Mazda RX4**       |   4    |
|     **Mazda RX4 Wag**     |   4    |
|      **Datsun 710**       |   1    |
|    **Hornet 4 Drive**     |   1    |
|   **Hornet Sportabout**   |   2    |
|        **Valiant**        |   1    |
|      **Duster 360**       |   4    |
|       **Merc 240D**       |   2    |
|       **Merc 230**        |   2    |
|       **Merc 280**        |   4    |
|       **Merc 280C**       |   4    |
|      **Merc 450SE**       |   3    |
|      **Merc 450SL**       |   3    |
|      **Merc 450SLC**      |   3    |
|  **Cadillac Fleetwood**   |   4    |
|  **Lincoln Continental**  |   4    |
|   **Chrysler Imperial**   |   4    |
|       **Fiat 128**        |   1    |
|      **Honda Civic**      |   2    |
|    **Toyota Corolla**     |   1    |
|     **Toyota Corona**     |   1    |
|   **Dodge Challenger**    |   2    |
|      **AMC Javelin**      |   2    |
|      **Camaro Z28**       |   4    |
|   **Pontiac Firebird**    |   2    |
|       **Fiat X1-9**       |   1    |
|     **Porsche 914-2**     |   2    |
|     **Lotus Europa**      |   2    |
|    **Ford Pantera L**     |   4    |
|     **Ferrari Dino**      |   6    |
|     **Maserati Bora**     |   8    |
|      **Volvo 142E**       |   2    |








