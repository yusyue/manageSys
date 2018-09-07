!
function(t) {
	function n(r) {
		if (i[r]) return i[r].exports;
		var a = i[r] = {
			"i": r,
			"l": !1,
			"exports": {}
		};
		return t[r].call(a.exports, a, a.exports, n),
		a.l = !0,
		a.exports
	}
	var i = {};
	n.m = t,
	n.c = i,
	n.i = function(t) {
		return t
	},
	n.d = function(t, i, r) {
		n.o(t, i) || Object.defineProperty(t, i, {
			"configurable": !1,
			"enumerable": !0,
			"get": r
		})
	},
	n.n = function(t) {
		var i = t && t.__esModule ?
		function() {
			return t["default"]
		}: function() {
			return t
		};
		return n.d(i, "a", i),
		i
	},
	n.o = function(t, n) {
		return Object.prototype.hasOwnProperty.call(t, n)
	},
	n.p = "//mat1.om.qq.com/om/om_2.0/js/build/",
	n(n.s = "N7//")
} ({
	"0": function(t, n) {
		t.exports = window.OM_BASE
	},
	"9ASm": function(t, n, i) {
		var r; (r = function(t, n, i) {
			function r() {
				var t = $("#skyContainer");
				this.render = function() {
					function n(t, n) {
						return Math.floor(Math.random() * (n - t)) + t
					}
					for (var i = ["style1", "style2", "style3", "style4"], r = ["tam1", "tam2", "tam1", "tam2", "tam3"], a = ["opacity1", "opacity1", "opacity1", "opacity2", "opacity2", "opacity3"], o = "", s = {
						"width": window.innerWidth,
						"height": window.innerHeight / 3
					},
					l = 0; l < 120; l++) o += "<span class='estrela " + i[n(0, 4)] + " " + a[n(0, 6)] + " " + r[n(0, 5)] + "' style='animation-delay: ." + n(0, 9) + "s; left: " + n(0, s.width) + "px; top: " + n(0, s.height) + "px;'></span>";
					t.html(o).css("height", window.innerHeight / 3 + "px")
				}
			}
			return r
		}.call(n, i, n, t)) !== undefined && (t.exports = r)
	},
	"N7//": function(t, n, i) {
		function r() {
			function t() {
				i.on("click",
				function(e) {
					r.show(),
					d.disableMouse()
				}),
				a.add(a.find(".close")).on("click",
				function(e) {
					e.target === this && d.enableMouse()
				}),
				c(document).keypress(function(e) {
					var t = e.which,
					n = c(".first-screen").find(".btnLogin");
					13 == t && c("#login-layer").is(":hidden") && n.closest(".login-container").find(".ptlogin-container").is(":hidden") && n.trigger("click")
				}),
				c(".goToKF").on("click",
				function() {
					window.open("https://kf.om.qq.com/", "_blank")
				})
			}
			var n = !1,
			i = c(".btn-a-login"),
			r = new l({
				"redirect": !0
			}).build(!0);
			c(".content").append(r.getHtml()),
			r.eventBind(),
			c("body").show();
			var a = c("#login-layer");
			this.bizInit = function() {
				return this
			},
			this.render = function() {
				return n || (n = !0, t(), d.init(), c.ajax({
					"url": "/userAuth/GetIndexMediaInfo",
					"type": "get",
					"dataType": "json"
				}).then(function(t) {
					try {
						if (!t.data || 0 == t.data.length) return void c(".galaxy").hide(); (new s).render(t.data)
					} catch(e) {
						c(".galaxy").hide()
					}
				})),
				this
			}
		}
		var a = i(0),
		o = i("lKmh"),
		s = i("Xw+Q"),
		l = a.component.newLoginFormLogic,
		c = a.$,
		d = (a.component.constantVar, new o); (new r).bizInit().render()
	},
	"Tzcj": function(t, n, i) {
		var r; (r = function(t, n, i) {
			function r() {
				var t = {};
				this.add = function(n) {
					var i, r = this.getId(n);
					if (t[r]) return r;
					var a = new Image,
					o = n.header;
					return a.src = o,
					i = d3.select("defs"),
					i.append("svg:pattern").attr("id", r).attr("patternContentUnits", "objectBoundingBox").attr("preserveAspectRatio", "xMinYMax meet").attr("height", 1).attr("width", 1).attr("x", "0").attr("y", "0").append("svg:image").attr("xlink:href", o).attr("preserveAspectRatio", "xMinYMax meet").attr("width", 1).attr("height", 1).attr("x", 0).attr("y", 0),
					t[r] = !0,
					r
				},
				this.getId = function(t) {
					return t.id + "Image"
				},
				this.remove = function(n) {
					var i = this.getId(n);
					d3.select("#" + i).remove(),
					t[i] = !1
				}
			}
			return r
		}.call(n, i, n, t)) !== undefined && (t.exports = r)
	},
	"Xw+Q": function(t, n, i) {
		var r; (r = function(t, n, r) {
			function a() {
				this.movePoint = function() {
					function t(t) {
						var n = d3.event.x,
						i = d3.event.y;
						console.log(n, i),
						d3.select(this).attr("transform",
						function(t) {
							return "translate(" + n + ", " + i + ")"
						}).select("text").text(t.id + ":" + n + "," + i)
					}
					var n = d3.select("svg"),
					i = (n.attr("width"), n.attr("height"), d3.drag().on("drag", t)),
					r = n.selectAll(".node").data(o).enter().append("g").attr("class", "node").attr("transform",
					function(t) {
						return t.x || (t.x = 30, t.y = 30),
						"translate(" + t.x + ", " + t.y + ")"
					}).call(i);
					r.append("circle").attr("r", 4).attr("fill", "#FFFFFF"),
					r.append("text").attr("font-size", 15).attr("dx", 15).attr("dy", 4).attr("fill", "red").text(function(t) {
						if (t.x) return t.id + ":" + t.x + "," + t.y
					})
				},
				this.render = function(t) {
					function n(t, n, i) {
						function r() {
							var n = g[t];
							return n ? (o.push("#" + n.id), ++t, n) : (t = 0, r())
						}
						var o = (g.length, []);
						this.tick = function() {
							if (!u && !p.is(":visible")) {
								o = [];
								for (var t = 0; t < n; t++) {
									var s = r();
									a.add(s)
								}
								i && i.call(this, o)
							}
						}
					}
					if ("undefined" != typeof SVGRect) {
						if (t.length < o.length) return void $(".galaxy").hide();
						if (t = t.shuffle(), window.innerHeight < 830) for (var i = 0; i < o.length; i++)"T" != o[i].id && "M" != o[i].id || (o.splice(i, 1), i--);
						for (var r = 0; r < o.length; r++) o[r].medianame = t[r].medianame,
						o[r].header = t[r].header.replace(/^https?:/, ""),
						o[r].customset = t[r].customset,
						o[r].mediaid = t[r].mediaid;
						var a = new s,
						l = {
							"class": "waveNode",
							"strokeColor": "#FFD200",
							"strokeWidth": 2,
							"fillColor": "none",
							"initRadius": 3,
							"lightRadius": 36
						},
						c = {
							"class": "commonNode",
							"fillColor": "#314182",
							"initRadius": 4
						},
						d = {
							"class": "headNode",
							"initRadius": 0,
							"lightRadius": 20,
							"hoverRadius": 30
						},
						u = !1,
						f = d3.select("svg"),
						h = (f.attr("width"), f.attr("height"), d3.select("#userInfoTips")),
						p = $("#userInfoTips"),
						y = f.selectAll(".node").data(o).enter().append("g").attr("class", "node").attr("id",
						function(t) {
							return t.id
						});
						y.append("circle").attr("class", l["class"]).attr("r", l.initRadius).attr("fill", l.fillColor),
						y.append("circle").attr("class", c["class"]).style("cursor", "pointer").attr("r",
						function(t) {
							return c.initRadius
						}).attr("fill", c.fillColor),
						y.append("circle").attr("class", "hoverArea").attr("r", 20).attr("fill-opacity", 0).style("cursor", "pointer"),
						y.append("circle").attr("class", d["class"]).style("cursor", "pointer").attr("r", d.initRadius).attr("fill-opacity", 0);
						var x;
						y.on("mouseenter",
						function(t) {
							clearTimeout(x);
							var n = a.add(t);
							u = !0,
							console.log("mouseenter-pauseNext", u),
							d3.select(this).select("." + d["class"]).transition().duration(250).ease(d3.easeLinear).attr("r", 30).style("fill",
							function(t) {
								return "url(#" + n + ")"
							}).on("start",
							function(t) {
								console.log("mouseenter-pauseNext2", u),
								u = !0
							}).attr("fill-opacity", 1).on("end",
							function(t) {});
							var i = t.x - 80,
							r = t.y + 48;
							p.find("h4").html(t.medianame),
							p.find("p").html(t.customset),
							h.interrupt(),
							h.style("display", "block").style("left", i + "px").style("top", r + "px").transition().duration(320).ease(d3.easeLinear).style("top", r - 4 + "px").style("opacity", 1)
						}).on("mouseleave",
						function(t) {
							d3.select(this).select("." + d["class"]).transition().duration(250).attr("r", 0).attr("fill-opacity", 0).on("end",
							function(t) {
								clearTimeout(x),
								x = setTimeout(function() {
									u = !1,
									m.tick()
								},
								1500)
							});
							var n = t.y + 48;
							h.transition().duration(320).ease(d3.easeLinear).style("top", n + "px").style("opacity", 0).on("end",
							function() {
								d3.select(this).style("display", "none")
							})
						}),
						y.selectAll(["." + c["class"], "." + d["class"], "." + l["class"], ".hoverArea"].join(",")).attr("cx",
						function(t) {
							return t.x
						}).attr("cy",
						function(t) {
							return t.y
						});
						var g = o.slice(0).shuffle(),
						m = new n(0, 1,
						function(t) {
							for (var n = this,
							i = (d3.selectAll(t.join(",")), t.length), r = 0, a = 0; a < i; a++) r = 0 + 2e3 * a,
							function(i, r) {
								i.select("." + d["class"]).attr("fill-opacity", 0).transition().duration(2500).delay(r).ease(d3.easeLinear).attr("r", 20).style("fill",
								function(t) {
									return "url(#" + t.id + "Image)"
								}).attr("fill-opacity", 1).transition().duration(920).delay(250).attr("r", 0).attr("fill-opacity", 0).on("start",
								function(t) {}).on("end",
								function(i) {
									"#" + i.id == t[0] && n.tick()
								}),
								i.select("." + l["class"]).attr("stroke", l.strokeColor).attr("stroke-width", "1.5").attr("stroke-opacity", 1).transition().duration(1260).delay(900 + r).ease(d3.easeLinear).attr("r", l.lightRadius).attr("stroke-opacity", 0).on("end",
								function() {
									d3.select(this).attr("r", l.initRadius)
								})
							} (d3.selectAll(t[a]), r)
						});
						m.tick()
					}
				}
			}
			var o = i("hCE3"),
			s = i("Tzcj");
			return Array.prototype.shuffle = function() {
				for (var t = this,
				n = t.length - 1; n >= 0; n--) {
					var i = Math.floor(Math.random() * (n + 1)),
					r = t[i];
					t[i] = t[n],
					t[n] = r
				}
				return t
			},
			a
		}.call(n, i, n, t)) !== undefined && (t.exports = r)
	},
	"hCE3": function(t, n, i) {
		var r; (r = function(t, n, i) {
			return [{
				"id": "B",
				"x": 395,
				"y": 113
			},
			{
				"id": "C",
				"x": 302,
				"y": 122
			},
			{
				"id": "D",
				"x": 209,
				"y": 197
			},
			{
				"id": "E",
				"x": 120,
				"y": 264
			},
			{
				"id": "F",
				"x": 360,
				"y": 191
			},
			{
				"id": "G",
				"x": 240,
				"y": 213
			},
			{
				"id": "H",
				"x": 151,
				"y": 347
			},
			{
				"id": "I",
				"x": 247,
				"y": 320
			},
			{
				"id": "J",
				"x": 422,
				"y": 310
			},
			{
				"id": "L",
				"x": 1082,
				"y": 154
			},
			{
				"id": "M",
				"x": 1259,
				"y": 301
			},
			{
				"id": "N",
				"x": 1017,
				"y": 195
			},
			{
				"id": "O",
				"x": 934,
				"y": 117
			},
			{
				"id": "P",
				"x": 931,
				"y": 214
			},
			{
				"id": "Q",
				"x": 1109,
				"y": 217
			},
			{
				"id": "R",
				"x": 936,
				"y": 355
			},
			{
				"id": "S",
				"x": 1061,
				"y": 319
			},
			{
				"id": "T",
				"x": 1199,
				"y": 316
			}]
		}.call(n, i, n, t)) !== undefined && (t.exports = r)
	},
	"lKmh": function(t, n, i) {
		var r; (r = function(t, n, r) {
			function a() {
				y.on("click",
				function(e) {
					$("html, body").animate({
						"scrollTop": d
					},
					500, "easeOutCubic")
				}),
				$(window).resize(function() {
					o()
				}).on("scroll",
				function() {
					var t = $(window).scrollTop(),
					n = t / d;
					n > 1 && (n = 1),
					n < 0 && (n = 0),
					f.css("opacity", n / 2),
					t >= d + 362 ? $("#header").slideDown(200) : $("#header").slideUp(200)
				}),
				$(document).on("mousewheel",
				function() {
					if (x) return ! 1
				})
			}
			function o() {
				d = $(window).height(),
				c = $(window).width();
				var t = c / h,
				n = d / p,
				i = n * h,
				r = t * p;
				d <= 800 && $(".slogan").css("top", "30px");
				var a = 0;
				r > d ? (a = d - r, u.css({
					"width": c + "px",
					"height": r + "px",
					"marginLeft": "0px",
					"top": a + "px",
					"left": "0px",
					"position": "inherit"
				})) : u.css({
					"width": i + "px",
					"height": d + "px",
					"left": "50%",
					"top": "0px",
					"marginLeft": -i / 2 + "px",
					"position": "absolute"
				}),
				u.show(),
				$(".login-panel").show(),
				$(".first-screen").css("height", d),
				$(".last-screen").css("height", d).show(),
				$(".middle-screen").css({
					"marginTop": d
				}).show(),
				g.render()
			}
			function s() {
				this.disableMouse = function() {
					x = !0
				},
				this.enableMouse = function() {
					x = !1
				},
				this.init = function() {
					o(),
					a()
				}
			}
			var l = i("9ASm"),
			c = 0,
			d = 0,
			u = $("#skin-bg img"),
			f = $(".mask-full"),
			h = 1920,
			p = 1080,
			y = $(".mouse"),
			x = !1,
			g = new l;
			return s
		}.call(n, i, n, t)) !== undefined && (t.exports = r)
	}
});
/*  |xGv00|062e5a6f50910dd31201efbd819ca5e1 */
