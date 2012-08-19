<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}
            
			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
            .dashboard {
                padding-top: 20px;
                margin-left: 15px;
            }

            .column {
                height: auto !important;
                height: 300px;
                min-height: 300px;
                float: left;
            }

            .portlet {
                margin: 0 0.5em 1em 0.5em;
            }

            .portlet-header {
                margin: 0.3em;
                padding: 5px;
            }

            .portlet-header .ui-icon {
                float: right;
            }

            .portlet-content {
                min-height: 300px;
                max-height: 300px !important;
                overflow-y: auto
            }

            .ui-sortable-placeholder {
                border: 1px dotted black;
                visibility: visible !important;
            }

            .ui-sortable-placeholder * {
                visibility: hidden;
            }

            .width-1 { width: 99%; }
            .width-2 { width: 49.5%;}
            .width-3 { width: 33%; }
		</style>
        <gvisualization:apiImport></gvisualization:apiImport>
	</head>
	<body>
        <div class="dashboard">
            <!-- Column 1 -->
            <div class="width-3 column" id="column_1">

                    <div class="portlet" >
                        <div class="portlet-header">Geo Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns = [['string', 'Country'], ['number','Popularity']]
                                def data = [['Germany', 200],
                                        ['United States', 300],
                                        ['Brazil', 400],
                                        ['Canada', 500],
                                        ['France', 600],
                                        ['RU', 700]]
                            %>
                            <gvisualization:geoChart elementId="geoChart" columns="${columns}" data="${data}" forceIFrame="${false}"/>
                            <div id="geoChart"></div>
                        </div>
                    </div>

                    <div class="portlet" >
                        <div class="portlet-header">Bar Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns3 = [['string','Year'], ['number','Austria'], ['number','Bulgaria'], ['number','Denmark'], ['number','Greece']]
                                def data3 = [['2003',  1336060,    400361,    1001582,   997974],
                                        ['2004',  1538156,    366849,    1119450,   941795],
                                        ['2005',  1576579,    440514,    993360,    930593],
                                        ['2006',  1600652,    434552,    1004163,   897127],
                                        ['2007',  1968113,    393032,    979198,    1080887],
                                        ['2008',  1901067,    517206,    916965,    1056036]]
                            %>
                            <gvisualization:barCoreChart elementId="barCoreChart" columns="${columns3}" data="${data3}" forceIFrame="${false}"/>
                            <div id="barCoreChart"></div>
                        </div>
                    </div>

                    <div class="portlet" >
                        <div class="portlet-header">Column Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns6 = [['string','Year'], ['number','Austria'], ['number','Belgium'], ['number','Czech Republic'], ['number','Finland'], ['number','France'], ['number','Germany']]
                                def data6 = [['2003',  1336060,   3817614,       974066,       1104797,   6651824,  15727003],
                                        ['2004',  1538156,   3968305,       928875,       1151983,   5940129,  17356071],
                                        ['2005',  1576579,   4063225,       1063414,      1156441,   5714009,  16716049],
                                        ['2006',  1600652,   4604684,       940478,       1167979,   6190532,  18542843],
                                        ['2007',  1968113,   4013653,       1037079,      1207029,   6420270,  19564053],
                                        ['2008',  1901067,   6792087,       1037327,      1284795,   6240921,  19830493]]
                            %>
                            <gvisualization:columnCoreChart elementId="columnCoreChart" columns="${columns6}" data="${data6}" forceIFrame="${false}"/>
                            <div id="columnCoreChart"></div>
                        </div>
                    </div>

                    <div class="portlet" >
                        <div class="portlet-header">Pie Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns9 = [ ['string','Task'], ['number','Hours per Day']]
                                def data9 = [['Work', 11],
                                        ['Eat', 2],
                                        ['Commute', 2],
                                        ['Watch TV', 2],
                                        ['Sleep', 7]]
                            %>
                            <gvisualization:pieCoreChart elementId="pieCoreChart" columns="${columns9}" data="${data9}" forceIFrame="${false}"/>
                            <div id="pieCoreChart"></div>
                        </div>
                    </div>

            </div>

            <!-- Column 2 -->
            <div class="width-3 column" id="column_2">

                    <div class="portlet">
                        <div class="portlet-header">Tree Map</div>
                        <div class="portlet-content">
                            <%
                                def columns1 = [['string','Location'], ['string','Parent'], ['number','Market trade volume (size)'], ['number','Market increase/decrease (color)']]
                                def data1 = [['Global',    null,                 0,                               0],
                                        ['America',   'Global',             0,                               0],
                                        ['Europe',    'Global',             0,                               0],
                                        ['Asia',      'Global',             0,                               0],
                                        ['Australia', 'Global',             0,                               0],
                                        ['Africa',    'Global',             0,                               0],
                                        ['Brazil',    'America',            11,                              10],
                                        ['USA',       'America',            52,                              31],
                                        ['Mexico',    'America',            24,                              12],
                                        ['Canada',    'America',            16,                              -23],
                                        ['France',    'Europe',             42,                              -11],
                                        ['Germany',   'Europe',             31,                              -2],
                                        ['Sweden',    'Europe',             22,                              -13],
                                        ['Italy',     'Europe',             17,                              4],
                                        ['UK',        'Europe',             21,                              -5],
                                        ['China',     'Asia',               36,                              4],
                                        ['Japan',     'Asia',               20,                              -12],
                                        ['India',     'Asia',               40,                              63],
                                        ['Laos',      'Asia',               4,                               34],
                                        ['Mongolia',  'Asia',               1,                               -5],
                                        ['Israel',    'Asia',               12,                              24],
                                        ['Iran',      'Asia',               18,                              13],
                                        ['Pakistan',  'Asia',               11,                              -52],
                                        ['Egypt',     'Africa',             21,                              0],
                                        ['S. Africa', 'Africa',             30,                              43],
                                        ['Sudan',     'Africa',             12,                              2],
                                        ['Congo',     'Africa',             10,                              12],
                                        ['Zair',      'Africa',             8,                               10]]
                            %>
                            <gvisualization:treeMap elementId="treeMap" columns="${columns1}" data="${data1}" forceIFrame="${false}" />
                            <div id="treeMap"></div>
                        </div>
                    </div>

                    <div class="portlet" >
                        <div class="portlet-header">Bubble Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns4 = [['string','ID'], ['number','Life Expectancy'], ['number','Fertility Rate'], ['string','Region'], ['number','Population']]
                                def data4 = [['CAN',    80.66,              1.67,      'North America',  33739900],
                                        ['DEU',    79.84,              1.36,      'Europe',         81902307],
                                        ['DNK',    78.6,               1.84,      'Europe',         5523095],
                                        ['EGY',    72.73,              2.78,      'Middle East',    79716203],
                                        ['GBR',    80.05,              2,         'Europe',         61801570],
                                        ['IRN',    72.49,              1.7,       'Middle East',    73137148],
                                        ['IRQ',    68.09,              4.77,      'Middle East',    31090763],
                                        ['ISR',    81.55,              2.96,      'Middle East',    7485600],
                                        ['RUS',    68.6,               1.54,      'Europe',         141850000],
                                        ['USA',    78.09,              2.05,      'North America',  307007000]]
                            %>
                            <gvisualization:bubbleCoreChart elementId="bubbleCoreChart" columns="${columns4}" data="${data4}" forceIFrame="${false}"/>
                            <div id="bubbleCoreChart"></div>
                        </div>
                    </div>

                    <div class="portlet" >
                        <div class="portlet-header">Combo Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns7 = [['string','Month'], ['number','Bolivia'], ['number','Ecuador'], ['number','Madagascar'], ['number','Papua New Guinea'], ['number','Rwanda'], ['number','Average']]
                                def data7 = [['2004/05',  165,      938,         522,             998,           450,      614.6],
                                        ['2005/06',  135,      1120,        599,             1268,          288,      682],
                                        ['2006/07',  157,      1167,        587,             807,           397,      623],
                                        ['2007/08',  139,      1110,        615,             968,           215,      609.4],
                                        ['2008/09',  136,      691,         629,             1026,          366,      569.6]]
                            %>
                            <gvisualization:comboCoreChart elementId="comboCoreChart" columns="${columns7}" data="${data7}" forceIFrame="${false}"/>
                            <div id="comboCoreChart"></div>
                        </div>
                    </div>

                    <div class="portlet" >
                        <div class="portlet-header">Scatter Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns10 = [['number','Age'], ['number','Weight']]
                                def data10 = [[ 8,      12],
                                        [ 4,      5.5],
                                        [ 11,     14],
                                        [ 4,      5],
                                        [ 3,      3.5],
                                        [ 6.5,    7]]
                            %>
                            <gvisualization:scatterCoreChart elementId="scatterCoreChart" columns="${columns10}" data="${data10}" forceIFrame="${false}"/>
                            <div id="scatterCoreChart"></div>
                        </div>
                    </div>

            </div>

            <!-- Column 3 -->
            <div class="width-3 column" id="column_3">

                    <div class="portlet">
                        <div class="portlet-header">Area Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns2 = [['string','Month'],   ['number','Bolivia'], ['number','Ecuador'], ['number','Madagascar'], ['number','Papua New Guinea'], ['number','Rwanda'],]
                                def data2 = [['2004/05',    165,      938,         522,             998,           450],
                                        ['2005/06',    135,      1120,        599,             1268,          288],
                                        ['2006/07',    157,      1167,        587,             807,           397],
                                        ['2007/08',    139,      1110,        615,             968,           215],
                                        ['2008/09',    136,      691,         629,             1026,          366]]
                            %>
                            <gvisualization:areaCoreChart elementId="areaCoreChart" columns="${columns2}" data="${data2}" forceIFrame="${false}" />
                            <div id="areaCoreChart"></div>
                        </div>
                    </div>

                    <div class="portlet">
                        <div class="portlet-header">Candlestick Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns5 = [['string','Day'], ['number',''], ['number',''], ['number',''], ['number','']]
                                def data5 = [['Mon', 20, 28, 38, 45],
                                        ['Tue', 31, 38, 55, 66],
                                        ['Wed', 50, 55, 77, 80],
                                        ['Thu', 77, 77, 66, 50],
                                        ['Fri', 68, 66, 22, 15]]
                            %>
                            <gvisualization:candlestickCoreChart elementId="candlestickCoreChart" columns="${columns5}" data="${data5}" forceIFrame="${false}" />
                            <div id="candlestickCoreChart"></div>
                        </div>
                    </div>

                    <div class="portlet" >
                        <div class="portlet-header">Line Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns8 = [ ['string','x'], ['number','Cats'], ['number','Blanket 1'], ['number','Blanket 2']]
                                def data8 = [['A',   1,       1,           0.5],
                                        ['B',   2,       0.5,         1],
                                        ['C',   4,       1,           0.5],
                                        ['D',   8,       0.5,         1],
                                        ['E',   7,       1,           0.5],
                                        ['F',   7,       0.5,         1],
                                        ['G',   8,       1,           0.5],
                                        ['H',   4,       0.5,         1],
                                        ['I',   2,       1,           0.5],
                                        ['J',   3.5,     0.5,         1],
                                        ['K',   3,       1,           0.5],
                                        ['L',   3.5,     0.5,         1],
                                        ['M',   1,       1,           0.5],
                                        ['N',   1,       0.5,         1]]
                            %>
                            <gvisualization:lineCoreChart elementId="lineCoreChart" columns="${columns8}" data="${data8}" forceIFrame="${false}"/>
                            <div id="lineCoreChart"></div>
                        </div>
                    </div>

                    <div class="portlet" >
                        <div class="portlet-header">Stepped Area Chart</div>
                        <div class="portlet-content">
                            <%
                                def columns11 = [['string','Director (Year)'], ['number','Rotten Tomatoes'], ['number','IMDB']]
                                def data11 = [['Alfred Hitchcock (1935)', 8.4,         7.9],
                                        ['Ralph Thomas (1959)',     6.9,         6.5],
                                        ['Don Sharp (1978)',        6.5,         6.4],
                                        ['James Hawes (2008)',      4.4,         6.2]]
                            %>
                            <gvisualization:steppedAreaCoreChart elementId="steppedAreaCoreChart" columns="${columns11}" data="${data11}" forceIFrame="${false}"/>
                            <div id="steppedAreaCoreChart"></div>
                        </div>
                    </div>

            </div>

            <script>


                $(document).ready( function () {
                    $( ".column" ).sortable({
                        connectWith: ".column",
                        handle: ".portlet-header",
                        cursor: "move",
                        opacity: 0.3
                    });

                    $( ".portlet" ).addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
                            .find( ".portlet-header" )
                            .addClass( "ui-widget-header ui-corner-all" )
                            .prepend( "<span class='ui-icon ui-icon-minusthick'></span>")
                            .prepend( "<span class='ui-icon ui-icon-closethick'></span>")
                            .end()
                            .find( ".portlet-content" );


                    $( ".portlet-header .ui-icon-minusthick" ).click(function() {
                        $( this ).toggleClass( "ui-icon-minusthick" ).toggleClass( "ui-icon-plusthick" );
                        $( this ).parents( ".portlet:first" ).find( ".portlet-content").toggle();
                    });

                    $( ".portlet-header .ui-icon-closethick" ).click(function() {
                        var id = $( this ).parents( ".portlet:first" ).attr("id").split("_")
                        $( this ).parents( ".portlet:first" ).remove();
                    });

                    $( ".column" ).disableSelection();
                });

            </script>
        </div>
	</body>
</html>
