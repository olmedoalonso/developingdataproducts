<body>
<div class="slide titlepage">
  <h1 class="title">Data Products: Week 4 Assignment</h1>
  <p class="author">
Olmedo Alonso Madrigales
  </p>
  <p class="date">8/18/2021</p>
</div>
<div id="introduction" class="slide section level2">
<h1>Introduction</h1>
<p>This is an RStudio shiny application developed as a part of final project in the Developing Data Products course in Coursera Data Science Specialization. The application summarizes the amounts of agricultural products brought to our Post Harvest Center (PHC) from the different sites (districts) of our provinces.</p>
<p>The main idea is to have a new way of reporting for the PHC Management´s Office use in order to keep track of the daily, weekly and monthly operations.</p>
</div>
<div id="the-application" class="slide section level2">
<h1>The Application</h1>
<ul>
<li><p>Radio button is the input form used</p></li>
<li><p>The user (PHC Manager) can select one or more districts to compare the amount of products from each of them. This is the reactive output displayed as a result of server calculations.</p></li>
<li><p>The server.R and ui.R codes are posted at: <a href="https://github.com/olmedoalonso/dataproducts/tree/main/shinyapps.io" class="uri">https://github.com/olmedoalonso/dataproducts/tree/main/shinyapps.io</a></p></li>
<li><p>The App can be found at: <a href="https://olmedoalonso.shinyapps.io/products/" class="uri">https://olmedoalonso.shinyapps.io/products/</a></p></li>
</ul>
</div>
<div id="ui.r-code-for-the-app" class="slide section level2">
<h1>ui.R Code for the APP</h1>
<div class="sourceCode" id="cb1"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a><span class="fu">fluidPage</span>(</span>
<span id="cb1-2"><a href="#cb1-2" aria-hidden="true" tabindex="-1"></a>  <span class="fu">checkboxGroupInput</span>(<span class="st">&quot;variable&quot;</span>, <span class="st">&quot;DISTRITOS:&quot;</span>,</span>
<span id="cb1-3"><a href="#cb1-3" aria-hidden="true" tabindex="-1"></a>                     <span class="fu">c</span>(<span class="st">&quot;CHITRE&quot;</span> <span class="ot">=</span> <span class="st">&quot;CHITRE&quot;</span>,</span>
<span id="cb1-4"><a href="#cb1-4" aria-hidden="true" tabindex="-1"></a>                       <span class="st">&quot;GUARARE&quot;</span> <span class="ot">=</span> <span class="st">&quot;GUARARE&quot;</span>,</span>
<span id="cb1-5"><a href="#cb1-5" aria-hidden="true" tabindex="-1"></a>                       <span class="st">&quot;LAS.MINAS&quot;</span> <span class="ot">=</span> <span class="st">&quot;LAS.MINAS&quot;</span>,</span>
<span id="cb1-6"><a href="#cb1-6" aria-hidden="true" tabindex="-1"></a>                       <span class="st">&quot;LAS.TABLAS&quot;</span> <span class="ot">=</span> <span class="st">&quot;LAS.TABLAS&quot;</span>,</span>
<span id="cb1-7"><a href="#cb1-7" aria-hidden="true" tabindex="-1"></a>                       <span class="st">&quot;LOS.POZOS&quot;</span> <span class="ot">=</span> <span class="st">&quot;LOS.POZOS&quot;</span>,</span>
<span id="cb1-8"><a href="#cb1-8" aria-hidden="true" tabindex="-1"></a>                       <span class="st">&quot;LOS.SANTOS&quot;</span> <span class="ot">=</span> <span class="st">&quot;LOS.SANTOS&quot;</span>,</span>
<span id="cb1-9"><a href="#cb1-9" aria-hidden="true" tabindex="-1"></a>                       <span class="st">&quot;MACARACAS&quot;</span> <span class="ot">=</span> <span class="st">&quot;MACARACAS&quot;</span>,</span>
<span id="cb1-10"><a href="#cb1-10" aria-hidden="true" tabindex="-1"></a>                       <span class="st">&quot;OCU&quot;</span> <span class="ot">=</span> <span class="st">&quot;OCU&quot;</span>,</span>
<span id="cb1-11"><a href="#cb1-11" aria-hidden="true" tabindex="-1"></a>                       <span class="st">&quot;PESE&quot;</span> <span class="ot">=</span> <span class="st">&quot;PESE&quot;</span>,</span>
<span id="cb1-12"><a href="#cb1-12" aria-hidden="true" tabindex="-1"></a>                       <span class="st">&quot;TONOSI&quot;</span> <span class="ot">=</span> <span class="st">&quot;TONOSI&quot;</span>)),</span>
<span id="cb1-13"><a href="#cb1-13" aria-hidden="true" tabindex="-1"></a>  <span class="fu">tableOutput</span>(<span class="st">&quot;data&quot;</span>)</span>
<span id="cb1-14"><a href="#cb1-14" aria-hidden="true" tabindex="-1"></a>)</span></code></pre></div>
<div class="container-fluid">
<div id="variable" class="form-group shiny-input-checkboxgroup shiny-input-container" role="group" aria-labelledby="variable-label">
<label class="control-label" id="variable-label" for="variable">DISTRITOS:</label>
<div class="shiny-options-group">
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="CHITRE"></input>
<span>CHITRE</span>
</label>
</div>
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="GUARARE"></input>
<span>GUARARE</span>
</label>
</div>
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="LAS.MINAS"></input>
<span>LAS.MINAS</span>
</label>
</div>
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="LAS.TABLAS"></input>
<span>LAS.TABLAS</span>
</label>
</div>
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="LOS.POZOS"></input>
<span>LOS.POZOS</span>
</label>
</div>
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="LOS.SANTOS"></input>
<span>LOS.SANTOS</span>
</label>
</div>
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="MACARACAS"></input>
<span>MACARACAS</span>
</label>
</div>
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="OCU"></input>
<span>OCU</span>
</label>
</div>
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="PESE"></input>
<span>PESE</span>
</label>
</div>
<div class="checkbox">
<label>
<input type="checkbox" name="variable" value="TONOSI"></input>
<span>TONOSI</span>
</label>
</div>
</div>
</div>
<div id="data" class="shiny-html-output"></div>
</div>
</div>
<div id="server.r-code-for-the-app" class="slide section level2">
<h1>Server.R Code for the APP</h1>
<div class="sourceCode" id="cb2"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" tabindex="-1"></a><span class="cf">function</span>(input, output, session) {</span>
<span id="cb2-2"><a href="#cb2-2" aria-hidden="true" tabindex="-1"></a>  output<span class="sc">$</span>data <span class="ot">&lt;-</span> <span class="fu">renderTable</span>({</span>
<span id="cb2-3"><a href="#cb2-3" aria-hidden="true" tabindex="-1"></a>    productos[, <span class="fu">c</span>(<span class="st">&quot;RUBRO&quot;</span>, input<span class="sc">$</span>variable), drop <span class="ot">=</span> <span class="cn">FALSE</span>]</span>
<span id="cb2-4"><a href="#cb2-4" aria-hidden="true" tabindex="-1"></a>  }, <span class="at">rownames =</span> <span class="cn">TRUE</span>)</span>
<span id="cb2-5"><a href="#cb2-5" aria-hidden="true" tabindex="-1"></a>}</span></code></pre></div>
<pre><code>## function(input, output, session) {
##   output$data &lt;- renderTable({
##     productos[, c(&quot;RUBRO&quot;, input$variable), drop = FALSE]
##   }, rownames = TRUE)
## }</code></pre>
</div>
<div id="data-analyzed" class="slide section level2">
<h1>Data Analyzed</h1>
<ul>
<li>This is the data table used in this assignment. The amount measures is in weight (Kilos).</li>
</ul>
<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
RUBRO
</th>
<th style="text-align:right;">
CHITRE
</th>
<th style="text-align:right;">
GUARARE
</th>
<th style="text-align:right;">
LAS MINAS
</th>
<th style="text-align:right;">
LAS TABLAS
</th>
<th style="text-align:right;">
LOS POZOS
</th>
<th style="text-align:right;">
LOS SANTOS
</th>
<th style="text-align:right;">
MACARACAS
</th>
<th style="text-align:right;">
OCU
</th>
<th style="text-align:right;">
PESE
</th>
<th style="text-align:right;">
TONOSI
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
AJI
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
160
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
880
</td>
<td style="text-align:right;width: 5em; ">
780
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
ARROZ
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
468180
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
MAIZ
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
648780
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
MAIZ_NUEVO
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
18120
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
ÑAME
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
2320
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
9660
</td>
<td style="text-align:right;width: 5em; ">
3600
</td>
<td style="text-align:right;width: 5em; ">
1400
</td>
</tr>
<tr>
<td style="text-align:left;">
OTOE
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
2260
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
1480
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
5020
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
PEPINO
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
220
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
PLATANO
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
460
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
YUCA
</td>
<td style="text-align:right;width: 5em; ">
2460
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
15600
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
22720
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
ZAPALLO
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
3580
</td>
<td style="text-align:right;width: 5em; ">
4520
</td>
<td style="text-align:right;width: 5em; ">
0
</td>
<td style="text-align:right;width: 5em; ">
5120
</td>
<td style="text-align:right;width: 5em; ">
346340
</td>
<td style="text-align:right;width: 5em; ">
18580
</td>
<td style="text-align:right;width: 5em; ">
11300
</td>
<td style="text-align:right;width: 5em; ">
30000
</td>
<td style="text-align:right;width: 5em; ">
59820
</td>
</tr>
</tbody>
</table>
</div>

